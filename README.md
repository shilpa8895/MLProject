## Machine Learning project - StudentPerformance Prediction APP

#### Description
This project predicts the maths score of students based on their performance in various subjects. Users can input features through a UI form, and the system will predict the maths score. The model is built using an ensemble model, and we have checked various models to identify the best performing one, which is then used for training the final model.

#### Data Source
The data for this project is sourced from : https://www.kaggle.com/datasets/spscientist/students-performance-in-exams?resource=download

#### Dataset Overview:
The dataset includes the following features:
- Gender 
- Race/Ethnicity 
- Parental Level of Education 
- Lunch 
- Test Preparation Course 
- reading score
- writing score\n
- Math Score (target variable)

#### Code Structure <details>

The code is organized as follows:

**src/:**<details>
- data_ingestion.py: Loads raw data, splits it into training and testing sets, and saves them for use in the machine learning pipeline.

- data_transformation.py: Preprocesses numerical and categorical features using pipelines, applies transformations to both training and test data, and saves the preprocessing object for future use.

- model_trainer.py: Trains and evaluates various regression models, selects the best-performing model based on R² score, and saves it for future predictions.

**pipeline/:**<details>
prediction.py: Handles the prediction tasks based on the trained model.

**artifacts/:**<details>
 Stores the trained model in .pkl format and the train,test and preprocessed data csv files for deployment.

**app.py:**<details>
The main entry point for the Flask application, running on port 8080.

**Dockerfile:**<details>
Containerizes the application using Docker for easy deployment.

**Github workflows:**<details>
Contains CI/Cd pipeline details 

**requirements.txt:**<details>
Lists the dependencies needed to run the project.

**exception.py**<details>
Defines custom exceptions for error handling in the project.

**logger.py**<details>
Handles logging functionality for tracking events and errors.

**setup.py**<details>
Configures the package setup and installation requirements.

**templates/:**<details>
Contains HTML files for the project’s frontend (e.g., for web applications).

Each folder in the project includes an __init__.py file, marking them as Python packages for modular organization. This allows easy imports of components 

**Run Code**
- python app.py

**GitHub Actions**
- git status
- git add .
- git commit -m 'text'
- git push -u origin main

**Docker Local**
- docker build -t studentperformance-app .
- docker images
- docker run -p 5000:5000 studentperformance-app (when app.py running in 5000 port no)

**Local port**
- http://127.0.0.1:5000/
- http://localhost:5000/

### Deployment Steps
- Docker Build checked
- Github Workflow
- Iam User In AWS
- EC2 Instance
