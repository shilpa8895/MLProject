## Machine Learning project - StudentPerformance Prediction APP

#### Description
This project predicts the maths score of students based on their performance in various subjects. Users can input features through a UI form, and the system will predict the maths score. The model is built using an ensemble model, and we have checked various models to identify the best performing one, which is then used for training the final model.

#### Data Source
The data for this project is sourced from : https://www.kaggle.com/datasets/spscientist/students-performance-in-exams?resource=download

#### Dataset Overview:
The dataset includes the following features:

Gender
Race/Ethnicity
Parental Level of Education
Lunch
Test Preparation Course
reading score
writing score
Math Score (target variable)

####Code Structure

The code is organized as follows:

**src/:**
- data_ingestion.py: Responsible for loading the raw data, splitting it into training and testing datasets, and saving it for subsequent steps in the machine learning pipeline.

- data_transformation.py: The Data Transformation process involves preprocessing the dataset by handling both numerical and categorical features. Numerical features are imputed with median values and standardized, while categorical features are imputed with the most frequent value, one-hot encoded, and then standardized all using pipeline method. The data transformation is applied to both training and testing datasets, and the preprocessed data is saved for further use in model training. The preprocessing pipeline is saved as a pickle file for deployment and future use.

- model_trainer.py: The Model Trainer component trains various regression models using ensemble technique (including Random Forest, Decision Tree, XGBoost, and CatBoost) using the provided training and testing data. It evaluates each model's performance and selects the best-performing model based on the R² score. The best model is then saved as a pickle file for later use in prediction tasks. The R² score of the best model on the test data is returned to assess its performance.

**pipeline/:**
- prediction.py: Handles the prediction tasks based on the trained model.
**artifacts/:**
 Stores the trained model in .pkl format and the train,test and preprocessed data csv files for deployment.

**frontend/:**
app.py: The main entry point for the Flask application, running on port 8080.

**Dockerfile:**
 Containerizes the application using Docker for easy deployment.

**Github workflows:**
 contains CI/Cd pipeline details 

 **requirements.txt:**
 Lists the dependencies needed to run the project.

 **exception.py**
 Defines custom exceptions for error handling in the project.

 **logger.py**
 Handles logging functionality for tracking events and errors.

 ***setup.py**
 Configures the package setup and installation requirements.

 **templates/:**
 Contains HTML files for the project’s frontend (e.g., for web applications).

 - Each folder in the project includes an __init__.py file, marking them as Python packages for modular organization. This allows easy imports of components 