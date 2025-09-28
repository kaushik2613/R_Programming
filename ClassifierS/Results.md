Decision Tree Classifier
Results :
<img width="614" height="404" alt="image" src="https://github.com/user-attachments/assets/e398d498-0b1c-4efa-b891-dba7e3fd2287" />

<img width="940" height="430" alt="image" src="https://github.com/user-attachments/assets/e3ef7123-b182-441f-8273-d707851369f7" />

<img width="710" height="542" alt="image" src="https://github.com/user-attachments/assets/6335621c-e7ed-4c9b-8a58-871824bd4f21" />

<img width="697" height="567" alt="image" src="https://github.com/user-attachments/assets/73ebf532-be90-401c-9490-055dd2efa98b" />

<img width="940" height="646" alt="image" src="https://github.com/user-attachments/assets/005b7dad-44ff-48a6-a893-a02fbe30ef91" />


Naïve Bayes Classifier :

a. Briefly explain your approach, any preprocessing, explain the output, any visualization for explanation, any feature extraction
Approach:
In this task, I aimed to classify emails as spam or not spam using a Gaussian Naive Bayes model. The dataset consisted of emails labelled as spam (1) or not spam (0). The first step involved loading the dataset and exploring its structure using Pandas.

Preprocessing: Since the email content is textual, I utilized the TF-IDF (Term Frequency-Inverse Document Frequency) method to convert the text data into numerical features. This technique allows the model to capture the importance of words in the context of the entire dataset. After feature extraction, the dataset was split into training (80%) and testing (20%) sets.

Feature extraction : TF-IDF (Term Frequency-Inverse Document Frequency) is a numerical statistic that assesses the significance of a word in a document relative to a collection of documents, known as a corpus. This method is widely used in text mining and natural language processing (NLP) to transform text data into a numerical format, making it suitable for machine learning models

Also, we can see from confusion matrix that most of the mails are marked as not spam followed by spam emails which also gives us relatively more accuracy of about 94% for our Navies Bayes classifier.

<img width="903" height="516" alt="image" src="https://github.com/user-attachments/assets/329fcdac-2e5d-4105-bb43-5c1edc45e9a4" />
Results:
The Gaussian Naive Bayes model was trained on the training data. The model achieved an accuracy score of approximately 94% on the test set. The confusion matrix was plotted to visualize the model's performance, highlighting true positives, true negatives, false positives, and false negatives.
The classifier's ability to handle large feature sets and its efficiency in training contribute significantly to its performance in text classification tasks like spam detection.

<img width="478" height="402" alt="image" src="https://github.com/user-attachments/assets/e29b8dfb-ca77-4376-8195-f4661181186f" />

<img width="678" height="693" alt="image" src="https://github.com/user-attachments/assets/989fc744-acfc-40a8-beb5-a7339e1f6229" />


Nearest Neighbour Classifier (KNN) :

a.	Describe the Nearest Neighbours method and why scaling is important in KNN.
 Standard scaling is used and the best 3 attributes as seen are Age, BMI, and Glucose as features in the context of predicting diabetes outcomes is based on their strong correlations with the target variable (Outcome). The Nearest Neighbours method is a simple, instance-based learning algorithm where the model predicts the class of a data point based on the majority class of its K nearest neighbours in the feature space. The choice of K can significantly impact the model's performance. Scaling is crucial in KNN because the algorithm relies on distance calculations; features with larger ranges can disproportionately influence the outcome if they are not scaled. Standardizing features ensures that all attributes contribute equally to the distance metrics.
b.	Explain what your criteria was for selecting the three attributes. What other 3 attribute can you choose? Visualizations of the target variable with three most significant attributes in a 2D projection, and write your observations in 4 - 5 lines in the same collab file 
The three attributes—Glucose, BMI, and Age—were selected based on their high correlation with the target variable (Outcome). These features were identified as potentially having the most significant impact on the prediction of diabetes. Alternatively, one could consider features like Blood Pressure or Insulin based on their domain significance. Visualizing the target variable against these attributes in a 2D projection can help to observe the distribution and separability of classes, leading to insights about the data.
c.	Explain Pearson's Correlation Coefficient, write the observations from heatmaps drawn. 
Pearson's Correlation Coefficient measures the linear correlation between two variables, with a value ranging from -1 to 1. A value close to 1 indicates a strong positive correlation, -1 indicates a strong negative correlation, and 0 indicates no correlation. From the heatmaps drawn, we can observe which features correlate strongly with the Outcome variable, informing our feature selection and model building. Hence from heatmap drawn we can see that Glucose and Bims have the highest correlation when compared to other features.
d.	Interpret and compare the results.
 Here we choose k as 3, 5 and 10 as in case of 3 and 5 we have odd values of k which helps us to avoid ties in binary classification problems. Also, we test k as 10 as we have a relatively larger dataset for making the right decision. Also, we see that k = 12 has the highest accuracy using elbow method and alps we see that error rate decreases as value increases. Additionally, we see from the scatter plot that that Glucose vs Age has more points near a specific glucose range as compared to the other scatter plot plotted.

<img width="935" height="672" alt="image" src="https://github.com/user-attachments/assets/d91267a7-a5fb-4258-8fa9-18b5a1c84616" />

<img width="926" height="581" alt="image" src="https://github.com/user-attachments/assets/546c1b04-1ecf-4d53-b41e-4b8ea235bed8" />

<img width="864" height="683" alt="image" src="https://github.com/user-attachments/assets/5f46c903-debe-45f6-85e3-e3712995f2eb" />

<img width="867" height="683" alt="image" src="https://github.com/user-attachments/assets/4bc5217a-5ce4-4984-aa39-66d152cc827c" />

<img width="864" height="683" alt="image" src="https://github.com/user-attachments/assets/6c11afd2-b1f6-443d-9b6c-2961858c7c99" />


<img width="999" height="567" alt="image" src="https://github.com/user-attachments/assets/acdc2225-23fb-4b85-aafa-81ef1f12307c" />

