# Load necessary libraries
library(dplyr)
library(tidyr)
library(stringr)
library(caret)
library(data.table)

# Load the dataset
data <-read.csv("your_path/dataset_DT.csv")
print(data)
str(data)
sum(is.na(data))

# Using na.omit to remove all rows with any NA values
clean_data <- na.omit(data)

# View the cleaned dataset
print(clean_data)
sum(is.na(clean_data))

# removing duplicate values in dataset
data_unique1 <- clean_data[!duplicated(clean_data),] 
print(data_unique1)


# Label encoding for all categorical columns
data_label_encoded <- data_unique1 %>%
  mutate(across(where(is.character), ~ as.numeric(as.factor(.))))

# View the result
print(data_label_encoded)
str(data_label_encoded)

boxplot(data_label_encoded, main = "Boxplot with outliers")

# Specify the columns to check for outliers
columns_to_check <- c('age', 'balance', 'day', 'duration', 'campaign','pdays','previous') 


# Function to remove outliers across multiple columns based on IQR
remove_outliers <- function(df) {
  # Create a copy of the data frame to avoid modifying the original
  df_no_outliers <- df
  
  # Identify outlier rows
  outlier_rows <- rep(FALSE, nrow(df))  # Logical vector to track outlier rows
  
  for (col in names(df_no_outliers)) {
    Q1 <- quantile(df_no_outliers[[col]], 0.25, na.rm = TRUE)
    Q3 <- quantile(df_no_outliers[[col]], 0.75, na.rm = TRUE)
    IQR <- Q3 - Q1
    
    # Define bounds for outliers
    lower_bound <- Q1 - 0.7 * IQR
    upper_bound <- Q3 + 0.3 * IQR
    
    # Update the logical vector for outlier rows
    outlier_rows <- outlier_rows | (df_no_outliers[[col]] < lower_bound | df_no_outliers[[col]] > upper_bound)
  }
  
  # Remove rows that are flagged as outliers
  df_no_outliers <- df_no_outliers[!outlier_rows, ]
  
  return(df_no_outliers)
}

# Remove outliers from dataset
cleaned2_dataset <- remove_outliers(data_label_encoded)

# View the cleaned data
head(cleaned2_dataset)

# Plot to check for outliers
boxplot(cleaned2_dataset, main = "Boxplot without outliers", las = 2)
boxplot(cleaned2_dataset$balance, main = "Boxplot for balance")

str(cleaned2_dataset)
print(cleaned2_dataset)


# Identify numerical features
numerical_cols <- sapply(cleaned2_dataset, is.numeric)

# Create a new dataframe for numerical data
data_numerical <- cleaned2_dataset[, numerical_cols]

# Min-Max Normalization Function
min_max_scaling <- function(x) {
  return ((x - min(x, na.rm = TRUE)) / (max(x, na.rm = TRUE) - min(x, na.rm = TRUE)))
}

# Apply normalization to numerical features
data_numerical_scaled <- as.data.frame(lapply(data_numerical, min_max_scaling))

# Combine scaled numerical data with the original dataset (excluding original numerical columns)
cleaned2_dataset_final <- cbind(cleaned2_dataset[, !numerical_cols], data_numerical_scaled)

# Check the result
head(cleaned2_dataset_final)
print(cleaned2_dataset_final)
summary(cleaned2_dataset_final)
str(cleaned2_dataset_final)



# Scaled dataset
#scaled_data <- scale(cleaned2_dataset[, numeric_vars])



# Check for missing values in the dataset
missing_summary <- colSums(is.na(cleaned2_dataset_final))
print(missing_summary)

# Remove columns with any NaN values
str(cleaned2_dataset_final)
# Remove columns with any NaN values
cleaned2_dataset_final_encoded1 <- cleaned2_dataset_final[, !sapply(cleaned2_dataset_final, function(x) any(is.nan(x)))]

print(cleaned2_dataset_final_encoded1)


# Select numeric variables including the target variable
numeric_vars <- sapply(cleaned2_dataset_final_encoded1, is.numeric)
# Print the names of numeric variables
str(numeric_vars)
print(names(cleaned2_dataset_final_encoded1)[numeric_vars])
str(cleaned2_dataset_final_encoded1)
summary(cleaned2_dataset_final_encoded1)

# Calculate the correlation matrix
cor_matrix <- cor(cleaned2_dataset_final_encoded1[, numeric_vars], use = "complete.obs")

# Extract correlations with the target variable
cor_target <- cor_matrix[, "y"]

# Check if cor_target has been created successfully
print(cor_target)

# Select the six most influential features
top_features <- head(cor_target, 6)
print(top_features)

#Top features selction
top_features_selction <- cleaned2_dataset_final_encoded1[,c('age','job','marital','education','balance','housing')]

data_taget <- cleaned2_dataset_final_encoded1[,"y"]
print(top_features_selction)
str(top_features_selction)
print(data_taget)


data_features_scaled<-scale(top_features_selction)


# Perform PCA
pca_result <- prcomp(data_features_scaled, center = TRUE, scale. = TRUE)

# Get the summary of PCA
pca_summary <- summary(pca_result)
print(pca_summary)

# Extract proportion of variance
variance_explained <- pca_summary$importance[2, ]
print(variance_explained)

# Cumulative variance
cumulative_variance <- cumsum(variance_explained)
print(cumulative_variance)

# Find the number of components to retain at least 90% variance
num_components <- which(cumulative_variance >= 0.90)[1]
print(num_components)

# Create a data frame with the selected components
pca_data <- as.data.frame(pca_result$x[, 1:num_components])

# Visualize the PCA results (first two components)
ggplot(pca_data, aes(x = PC1, y = PC2)) +
  geom_point() +
  labs(title = "PCA: First Two Principal Components") +
  theme_minimal()

print(pca_data)


# Example of aggregating by group
top_features_selection_vector <- (top_features_selction)
print(top_features_selection_vector)
aggregated_data <- cleaned2_dataset_final_encoded1 %>%
  group_by(cleaned2_dataset_final_encoded1$y) %>% 










