# Eating habits and its effects on health condition
## Machine Learning Model

### First Segment Overview
Create a mockup of a simple Machine Learning Model

- Which Model did you choose and why?
    - Random Forest with Feature Selection, because it can be used for both classifications and regression and it produces good predictions that can be understood easily. Also Random Forest with Feature selection gives us and indication of how important a feature is and it helps us to create a subset of relevan t features, reducing the width out the dataset and simplified the model in order to reduce training time.

- How are you training your model?
    - Preprocessing
        - Define the features set
        - Define the target set
        - Split the dataset into the training and testing sets
        - Create the StandarScaler instance
    - Fit the Random Forest Model
        - Create a random forest instance using the RandomForestClassifier()
        - Fit the model with the training set

- What's the model's accuracy?
    - first attempt: 0.5965

- How does this model work?
    - Random Forest randomly sampling subsets of the training data, fitting a model to these smaller data sets and aggregating the predictions.


**Takes in data in from provisional database**
| provisional dataframe | convert columns into integer labels |
| --- | --- |
| <img src="/Resources/s1_provisionalDB-1.png"> | <img src="/Resources/s1_provisionalDB-2.png"> | 

**Outputs label for input data**
- split the dataset into features (inputs) and target (output)
- <img src="/Resources/s1-OutputLabel-inputData.png" width="30%" height="30%">

**Summary**
Our model is currently still under development, from what we could observe during this first attempt was that the accuracy was not as high as we expected (0.5965), however, we are working on it. 

<img src="/Resources/s1_modelEvaluation.png" width="50%" height="50%">

To calculate the feature importance, we are using *feature_importances_attribute* and this allows us to observe which features have the most impact on decision.

<img src="/Resources/s1_features.png" width="40%" height="40%">
    
The following image shows a comparison of the first ten output results of the prediction model against the real ones.

<img src="/Resources/s1_Labels.png" width="10%" height="10%">

As can be seen, the target is not a binary output, which is why we continue reading about decision trees and random forest in order to improve the model.

### Second Segment Overview 
