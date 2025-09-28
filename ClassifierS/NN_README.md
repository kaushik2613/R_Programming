Nearest Neighbor Classifier:

Dataset information
Load dataset_NN.csv

Tasks:
The data is ordered by age.
Features Description:
• Pregnancies → Number of times pregnant
• Glucose → Plasma glucose concentration 2 hours in an oral glucose tolerance test
• BloodPressure → Diastolic blood pressure (mm Hg)
• SkinThickness → Triceps skin fold thickness (mm)
• Insulin → 2-Hour serum insulin (mu U/ml)
• BMI → Body mass index (weight in kg/(height in m)^2)
• DiabetesPedigreeFunction → Diabetes pedigree function
• Age → Age (years)
Target Variable:
• Outcome - Class variable (0 or 1)
1. Load dataset_NN.csv dataset.
2. Data Pre-processing.
3. Using Pearson's Correlation Coefficient find out the relation between variables using Heat Map
(Draw heat maps before and after cleaning data to find differences)
4. Scale the data and mention which scaling technique used.
5. Split your dataset 75% for training, and 25% for testing and do cross validation for the classifier.
6. Find the best K using elbow method.
7. Use Euclidean distance.
8. Select three best attributes and explain why you chose them.
9. Test the classifier with three different k values for neighbors and record the results.
10. Plot the ROC curve for best K value.
11. Use comments to explain your code at each step of all points.
12. Calculate and print the confusion matrix, and the classification Report (includes: precision,
recall, f1-score, and support) for all three different numbers. Plot the Error rate vs. K-value.
13. Create a report file to include concise answers to the following questions:
a. Describe the Nearest Neighbors method and why scaling is important in KNN.
b. Explain what your criteria was for selecting the three attributes. What other 3
attribute can you choose? Visualizations of the target variable with three most
significant attributes in a 2D projection, and write your observations in 4 - 5 lines
in the same collab file
c. Explain Pearson's Correlation Coefficient, write the observations from heatmaps
drawn.
d. Interpret and compare the results.
Hints:
1. Dataset consists of Nan values/ null values, to pre-process the data, you simply should
not replace with mean/median, instead understand the data distribution, and do data
preprocessing.
2. You can use libraries: NumPy, Pandas, Scikit-learn, Matplotlib and Seaborn
3. While choosing K-values, that should be meaningful, you cannot just simply choose and do
analysis. Describe why you choose only those particular K values.
4. Models’ accuracy depends on the first step data preprocessing
1. Dataset consists of Nan values/ null values, to pre-process the data, you simply should
not replace with mean/median, instead understand the data distribution, and do data
preprocessing.
2. You can use libraries: NumPy, Pandas, Scikit-learn, Matplotlib and Seaborn
3. While choosing K-values, that should be meaningful, you cannot just simply choose and do
analysis. Describe why you choose only those particular K values.
4. Models’ accuracy depends on the first step data preprocessing
