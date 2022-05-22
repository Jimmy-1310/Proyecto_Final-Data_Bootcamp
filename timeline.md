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

### First Segment Overview 
