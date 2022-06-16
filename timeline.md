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

***Summary***

Our model is currently still under development, from what we could observe during this first attempt was that the accuracy was not as high as we expected (0.5965), however, we are working on it. 

<img src="/Resources/s1_modelEvaluation.png" width="50%" height="50%">

To calculate the feature importance, we are using *feature_importances_attribute* and this allows us to observe which features have the most impact on decision.

<img src="/Resources/s1_features.png" width="40%" height="40%">
    
The following image shows a comparison of the first ten output results of the prediction model against the real ones.

<img src="/Resources/s1_Labels.png" width="10%" height="10%">

As can be seen, the target is not a binary output, which is why we continue reading about decision trees and random forest in order to improve the model.

### Second Segment Overview 
Machine Learning: Random Forest with Feature Selection
- What is the model's accuracy?
    - second attempt: 0.8504
     
- If there are statistics involved, what stats are being included in analysis and why?
    - Logist regression, It is used for predicting the categorical dependent variable using a given set of independent variables 

**Connecting to AWS RDS with SQL Alchemy**
| python (aws + sqlalchemy + join) | dataframe | 
| --- | --- |
| <img src="/Resources/s2_DB-2.png"> | <img src="/Resources/s2_DB-3.png"> |

- Description of preliminary data preprocessing
    - drop missing data *df = df.dropna()*
    
- Description of preliminary feature engineering and preliminary feature selection, including their decision-making process
    - feature selection: *gender, age, family_history_with_overweight, favc, fcvc, ncp, caec, smoke, ch20, scc, faf, tue, calc, mtrans*
    - id(pk's), weight and height were eliminated, since it is intended to determine obesity levels based on eating habits and physical condition.
    
- Description of how data was split into training and testing sets
<img src="/Resources/s2_splitData.png" width="40%" height="40%">
    
- Explanation of model choice, including limitations and benefits
    - The random forest algorithm produces good predictions that can be understood easily and it provides a higher level of accuracy in predicting outcomes over the decision tree algorithm. The main limitation of random forest is that a large number of trees can make the algorithm too slow and ineffective for real-time predictions

- Model Evaluation (second attempt)
<img src="/Resources/s2_modelEvaluation.png" width="40%" height="40%">


### Four Segment Overview 
- What is the model's accuracy?
    - four attempt: 0.8560
    - feature selection based on importance weights: 0.7803

- Random Forest - Model Evaluation
<img src="/Resources/s4_modelEvaluation.png" width="40%" height="40%">

In summary this random forest model is good at classifying the weight ranges (BMI levels) of each person based on its eating and physical habits because the model's accuracy, 0.856, and F1 score values are high. In other words, the person's daily habits affect the level of BMI


- Random Forest with Feature Selection - Model Evaluation

| *feature selection based on importance weights* | *Model Evaluation* |
| --- | --- |
| <img src="/Resources/s4_features.png"> | <img src="/Resources/s4_modelEvaluation_FS.png"> 

It can be seen that the most relevant habits are Age, Frequency of consumption of vegetables (FCVC), Number of main meals (NCP) and Physical activity frequency (FAF),

In order to improve the model, the features of lower rank were dropped, however, there were no improvements in the accuracy of the model.

