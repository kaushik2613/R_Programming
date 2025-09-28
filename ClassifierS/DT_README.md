Decision Tree Classifier:

1. Import the libraries and load the dataset (from the csv file).
2. Preprocessing step: you can use the result of your assignment 1 or if you have any other new
approach you can apply it .
3. Determine Six most influential attributes on target attribute (with explanation). You do not
necessarily need to drop the remaining features for the Decision Tree Classifier. Your task is just to
determine and show the Six most influential attributes with detailed explanation.
4. Split your dataset 75% for training, and 25% for testing the classifier.
5. Use gini and entropy (play around with max_depth and min_samples_leaf parameters) to measure
the quality of a split.
6. Use comments to explain your code and variable names.
7. Calculate and print the confusion matrix (use graphics instead showing a 2D array), and the
classification Report (includes: precision, recall, f1-score, and support) for both criteria.
8. Compare the results of the classifier using gini and entropy.
9. Print the decision tree visualization with depth of 5.
Hints:
1. Categorized Data is preferable for decision trees. If needed, figure out how to convert
continuous feature to categorical and implement it.
2. Unwanted data can reduce the model's accuracy
