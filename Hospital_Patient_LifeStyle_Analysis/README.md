# 🏥 Hospital Patient Lifestyle Analysis

## 📌 Project Overview

This project analyzes a hospital patient lifestyle dataset to understand patterns and associations between demographic, lifestyle, and health-related factors and heart attack risk.

The project currently focuses on two phases:

- **Phase 1:** Exploratory Data Analysis using Python
- **Phase 2:** SQL-based data analysis using MySQL

Machine Learning prediction is planned as a future phase after completing the required Machine Learning fundamentals.

The goal is to build a practical healthcare data analysis project while developing skills relevant to both **Data Analytics** and **AI/ML Engineering**.

---

## 🎯 Problem Statement

Healthcare organizations generate large amounts of patient health and lifestyle data. Analyzing this data can help identify patterns and relationships between patient characteristics and health outcomes.

This project analyzes demographic, lifestyle, and medical factors to explore their association with heart attack risk and generate data-driven insights.

---

## 🎯 Objectives

- Understand the structure and characteristics of the dataset.
- Clean and prepare the data for analysis.
- Perform Exploratory Data Analysis (EDA).
- Perform Univariate and Bivariate Analysis.
- Analyze relationships between numerical variables using correlation analysis.
- Analyze patient data using SQL and MySQL.
- Identify patterns associated with heart attack risk.
- Generate data-driven insights.
- Demonstrate practical SQL skills used in data analytics.
- Prepare the project for future Machine Learning-based prediction.

---

## 📂 Dataset Information

**Dataset Name:**  
Heart Attack Prediction Dataset

**Source:**  
Kaggle

The dataset contains demographic, lifestyle, and health-related information such as:

- Age
- Sex
- Cholesterol
- Blood Pressure
- Heart Rate
- Diabetes
- Family History
- Smoking
- Obesity
- Alcohol Consumption
- Exercise Hours Per Week
- Diet
- Stress Level
- BMI
- Sleep Hours
- Physical Activity
- Previous Heart Problems
- Medication Use
- Heart Attack Risk
- Country
- Continent

---

# 🛠️ Technologies Used

## Programming & Data Analysis

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn

## Database & SQL

- SQL
- MySQL
- MySQL Workbench

## Development Tools

- Jupyter Notebook
- VS Code
- Git
- GitHub

---

# 📊 Project Workflow

## Phase 1 — Python Exploratory Data Analysis

### 1. Data Loading

- Imported the dataset.
- Verified the dataset structure.
- Inspected the available columns and records.

### 2. Data Understanding

- Checked data types.
- Checked missing values.
- Checked duplicate records.
- Explored unique values.
- Examined distributions of important variables.

### 3. Data Cleaning

- Handled missing values.
- Removed unnecessary columns where appropriate.
- Verified data consistency.
- Prepared the dataset for analysis.

### 4. Exploratory Data Analysis

#### Univariate Analysis

- Age Distribution
- BMI Distribution
- Sex Distribution
- Smoking Distribution
- Diet Distribution
- Heart Attack Risk Distribution

#### Bivariate Analysis

- Age vs Heart Attack Risk
- BMI vs Heart Attack Risk
- Smoking vs Heart Attack Risk
- Cholesterol vs Heart Attack Risk
- Exercise Hours vs Heart Attack Risk
- Stress Level vs Heart Attack Risk

#### Correlation Analysis

- Correlation heatmap of numerical features.
- Analysis of relationships between numerical variables.

---

# 🗄️ Phase 2 — SQL Analysis

The dataset was imported into **MySQL** and analyzed using SQL to demonstrate practical data analytics techniques.

The SQL analysis is stored in:

```text
sql/hospital_patient_analysis.sql
1. Data Overview

The SQL analysis includes:

Total number of patients.
Duplicate Patient ID detection.
Average patient age.
Gender distribution.
Average cholesterol by gender.
2. Heart Attack Risk Analysis
Overall heart attack risk distribution.
Overall risk percentage.
Age-group risk analysis.
Diabetes vs heart attack risk.
Family history vs heart attack risk.
3. Lifestyle Analysis
Smoking vs heart attack risk.
Alcohol consumption vs heart attack risk.
Diet vs heart attack risk.
Exercise hours vs heart attack risk.
4. Health Factor Analysis
Cholesterol category vs heart attack risk.
Average cholesterol by risk group.
Average BMI by risk group.
Average heart rate by risk group.
Blood pressure analysis.
5. Geographic Analysis
Continent-wise risk analysis.
Geographic comparison of observed risk percentages.
6. Advanced SQL

The project demonstrates:

Aggregate functions
Conditional aggregation
CASE statements
GROUP BY
HAVING
Subqueries
Common Table Expressions (CTEs)
Window functions
RANK()
INNER JOIN
ORDER BY
LIMIT
📈 Key Findings
Overall Risk
8,763 patients were analyzed.
3,139 patients were classified as having heart attack risk.
The overall observed risk percentage was 35.82%.
Age Analysis

The observed risk percentage by age group was:

Age Group	Total Patients	Risk Patients	Observed Risk %
40–49	1,201	441	36.72%
60+	3,679	1,329	36.12%
18–29	1,502	541	36.02%
30–39	1,225	435	35.51%
50–59	1,156	393	34.00%

The 40–49 age group had the highest observed risk percentage at 36.72%, while the 50–59 age group had the lowest at 34.00%.

The difference between the groups was relatively small.

Cholesterol Analysis
Cholesterol Category	Total Patients	Risk Patients	Observed Risk %
High	5,054	1,844	36.49%
Medium	1,257	453	36.04%
Low	2,452	842	34.34%

The high-cholesterol group had the highest observed risk percentage at 36.49%, compared with 34.34% for the low-cholesterol group.

The difference was approximately 2.15 percentage points.

Smoking Analysis
Smoking Status	Total Patients	Risk Patients	Observed Risk %
Smoker	7,859	2,810	35.76%
Non-Smoker	904	329	36.39%

The observed risk percentage was 35.76% among smokers and 36.39% among non-smokers.

The difference was small, and this dataset did not show strong separation in observed risk based on smoking status.

Note: These findings represent associations observed within this dataset. They should not be interpreted as medical conclusions or evidence of causation.

📊 Python EDA Findings
Most numerical variables showed weak correlations.
Cholesterol and BMI displayed only slight differences between heart attack risk groups.
Lifestyle variables such as smoking and diet did not show strong visual separation in this dataset.
Age distributions were relatively similar across heart attack risk groups.
The observed risk did not appear to be strongly separated by a single variable.
Multiple demographic, lifestyle, and health-related factors may need to be considered together for deeper analysis.
💡 Recommendations

Based on the exploratory analysis:

Encourage regular health screenings.
Promote healthy dietary and physical activity habits.
Monitor health indicators such as cholesterol and BMI.
Encourage awareness of healthy lifestyle practices.
Use larger and more representative healthcare datasets for deeper analysis.

These recommendations are general observations from the analysis and are not intended as medical advice.

⚠️ Limitations
The analysis is based on a single dataset.
The dataset shows limited variation between heart attack risk groups.
Many variables show weak correlations.
The observed differences between groups are relatively small.
The analysis identifies associations and does not establish cause-and-effect relationships.
Results depend on the quality and characteristics of the dataset.
The dataset's heart attack risk label should not be treated as a clinically validated prediction target without further validation.
Larger and more representative real-world healthcare datasets would be required for stronger conclusions.
🚀 Future Scope
Phase 3 — Machine Learning

After completing Machine Learning fundamentals, this project will be extended with:

Feature engineering
Feature selection
Train/test splitting
Classification algorithms
Model evaluation
Hyperparameter tuning
Model comparison
Heart attack risk prediction
Additional Future Improvements
Develop an interactive Power BI dashboard.
Perform advanced statistical analysis.
Use larger real-world healthcare datasets.
Compare patient lifestyle trends across countries.
Explore additional healthcare indicators.
📷 Sample Visualizations

The project includes visual analysis such as:

Age Distribution
BMI vs Heart Attack Risk
Smoking vs Heart Attack Risk
Cholesterol vs Heart Attack Risk
Correlation Heatmap

Additional SQL results can be generated directly from the SQL analysis script.

📁 Project Structure
Hospital-Patient-Lifestyle-Analysis/
│
├── data/
│   └── heart_attack_prediction_dataset.csv
│
├── notebook/
│   └── Hospital_Patient_Lifestyle_Analysis.ipynb
│
├── images/
│
├── sql/
│   └── hospital_patient_analysis.sql
│
├── requirements.txt
│
├── README.md
│
└── LICENSE
▶️ How to Run
1. Clone the repository
git clone <repository-link>
2. Install the required Python libraries
pip install -r requirements.txt
3. Open Jupyter Notebook
jupyter notebook
4. Open the notebook
Hospital_Patient_Lifestyle_Analysis.ipynb
5. SQL Analysis

Import the dataset into MySQL and open:

sql/hospital_patient_analysis.sql

Execute the SQL queries using MySQL Workbench.

📚 Skills Demonstrated
Data Analysis
Data Cleaning
Exploratory Data Analysis (EDA)
Univariate Analysis
Bivariate Analysis
Data Visualization
Correlation Analysis
Data Interpretation
Business Problem Solving
SQL
SQL Querying
Aggregate Functions
Conditional Aggregation
CASE Statements
GROUP BY
HAVING
Subqueries
Common Table Expressions (CTEs)
Window Functions
RANK()
INNER JOIN
ORDER BY
LIMIT
Tools & Libraries
Python
Pandas
NumPy
Matplotlib
Seaborn
MySQL
MySQL Workbench
Jupyter Notebook
VS Code
Git
GitHub
👩‍💻 Author

Dharshini Nayakawadi

B.Tech Artificial Intelligence & Machine Learning

Python | SQL | Data Analysis | AI/ML

⭐ If you found this project useful, consider giving it a star!


**That's the complete README.** You don't need to add anything else to it right now.


After pasting and saving it, your next task is simply to make sure the new `sql/hospital_patient_analysis.sql` file is inside the existing project, then we'll **commit the README + SQL file together** to your existing GitHub repository.