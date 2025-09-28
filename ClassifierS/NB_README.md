Naïve Bayes Classifier:

Dataset information
Features Description:
• email → text data of the actual email
Target variable:
• Label → spam(1) or not spam(0)
Tasks
1. Load the dataset as pandas dataframe.
2. You have textual data that you cannot feed into the model. Therefore, you need to extract features
from the text (email) and transform the data.
3. Test train split, using 80% for training, rest for testing.
4. Train NB model (Gaussian) for classification, on the training data.
5. Predict on the test data.
6. Get the accuracy, plot the confusion matrix, report Accuracy Score(metrics.accuracy_score), and
plot Confusion Matrix(metrics.confusion_matrix) plotted graphically.
7. Create a report file to include concise answers to the following questions -
a. Briefly explain your approach, any preprocessing, explain the output, any visualization for
explanation, any feature extraction, in same colab file (3-4 paragraphs max)
Hints
1. There are techniques to extract features, such as Bag of Words, n-grams, Tf-Idf, Word2Vec,
CountVectorizer, and many others.
2. Know your data. Look at the data in dataset (Open the data file and see the data or use pandas to
check the info).
