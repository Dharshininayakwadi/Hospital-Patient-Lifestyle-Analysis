-- =====================================================
-- HOSPITAL PATIENT LIFESTYLE ANALYSIS
-- SQL ANALYSIS
-- =====================================================

-- =====================================================
-- 1. DATA OVERVIEW
-- =====================================================

-- 1.1 Total number of patients
SELECT COUNT(*) AS total_patients
FROM patients;


-- 1.2 Check for duplicate Patient IDs
SELECT
    `Patient ID`,
    COUNT(*) AS duplicate_count
FROM patients
GROUP BY `Patient ID`
HAVING COUNT(*) > 1;


-- 1.3 Average age of patients
SELECT
    AVG(Age) AS average_age
FROM patients;


-- 1.4 Gender distribution
SELECT
    Sex,
    COUNT(*) AS patient_count
FROM patients
GROUP BY Sex;


-- 1.5 Average cholesterol by gender
SELECT
    Sex,
    COUNT(*) AS patient_count,
    AVG(Cholesterol) AS average_cholesterol
FROM patients
GROUP BY Sex;

-- =====================================================
-- 2. HEART ATTACK RISK ANALYSIS
-- =====================================================

-- 2.1 Overall heart attack risk distribution
SELECT
    `Heart Attack Risk`,
    COUNT(*) AS patient_count
FROM patients
GROUP BY `Heart Attack Risk`;


-- 2.2 Overall heart attack risk percentage
SELECT
    COUNT(CASE
        WHEN `Heart Attack Risk` = 1 THEN 1
    END) AS risk_patients,

    COUNT(*) AS total_patients,

    COUNT(CASE
        WHEN `Heart Attack Risk` = 1 THEN 1
    END) * 100.0 / COUNT(*) AS risk_percentage
FROM patients;


-- 2.3 Heart attack risk by age group
SELECT
    CASE
        WHEN Age BETWEEN 18 AND 29 THEN '18-29'
        WHEN Age BETWEEN 30 AND 39 THEN '30-39'
        WHEN Age BETWEEN 40 AND 49 THEN '40-49'
        WHEN Age BETWEEN 50 AND 59 THEN '50-59'
        ELSE '60+'
    END AS age_group,

    COUNT(*) AS total_patients,

    COUNT(CASE
        WHEN `Heart Attack Risk` = 1 THEN 1
    END) AS risk_patients,

    COUNT(CASE
        WHEN `Heart Attack Risk` = 1 THEN 1
    END) * 100.0 / COUNT(*) AS risk_percentage

FROM patients
GROUP BY age_group
ORDER BY risk_percentage DESC;


-- 2.4 Diabetes vs heart attack risk
SELECT
    Diabetes,
    COUNT(*) AS total_patients,

    COUNT(CASE
        WHEN `Heart Attack Risk` = 1 THEN 1
    END) AS risk_patients,

    COUNT(CASE
        WHEN `Heart Attack Risk` = 1 THEN 1
    END) * 100.0 / COUNT(*) AS risk_percentage

FROM patients
GROUP BY Diabetes;


-- 2.5 Family history vs heart attack risk
SELECT
    `Family History`,
    COUNT(*) AS total_patients,

    COUNT(CASE
        WHEN `Heart Attack Risk` = 1 THEN 1
    END) AS risk_patients,

    COUNT(CASE
        WHEN `Heart Attack Risk` = 1 THEN 1
    END) * 100.0 / COUNT(*) AS risk_percentage

FROM patients
GROUP BY `Family History`;

-- =====================================================
-- 3. LIFESTYLE ANALYSIS
-- =====================================================

-- 3.1 Smoking vs heart attack risk
SELECT
    Smoking,
    COUNT(*) AS total_patients,

    COUNT(CASE
        WHEN `Heart Attack Risk` = 1 THEN 1
    END) AS risk_patients,

    COUNT(CASE
        WHEN `Heart Attack Risk` = 1 THEN 1
    END) * 100.0 / COUNT(*) AS risk_percentage

FROM patients
GROUP BY Smoking;


-- 3.2 Alcohol consumption vs heart attack risk
SELECT
    `Alcohol Consumption`,
    COUNT(*) AS total_patients,

    COUNT(CASE
        WHEN `Heart Attack Risk` = 1 THEN 1
    END) AS risk_patients,

    COUNT(CASE
        WHEN `Heart Attack Risk` = 1 THEN 1
    END) * 100.0 / COUNT(*) AS risk_percentage

FROM patients
GROUP BY `Alcohol Consumption`;


-- 3.3 Diet vs heart attack risk
SELECT
    Diet,
    COUNT(*) AS total_patients,

    COUNT(CASE
        WHEN `Heart Attack Risk` = 1 THEN 1
    END) AS risk_patients,

    COUNT(CASE
        WHEN `Heart Attack Risk` = 1 THEN 1
    END) * 100.0 / COUNT(*) AS risk_percentage

FROM patients
GROUP BY Diet;


-- 3.4 Exercise hours vs heart attack risk
SELECT
    `Exercise Hours Per Week`,
    COUNT(*) AS total_patients,

    COUNT(CASE
        WHEN `Heart Attack Risk` = 1 THEN 1
    END) AS risk_patients,

    COUNT(CASE
        WHEN `Heart Attack Risk` = 1 THEN 1
    END) * 100.0 / COUNT(*) AS risk_percentage

FROM patients
GROUP BY `Exercise Hours Per Week`
ORDER BY `Exercise Hours Per Week`;

-- =====================================================
-- 4. HEALTH FACTOR ANALYSIS
-- =====================================================

-- 4.1 Cholesterol category vs heart attack risk
SELECT
    CASE
        WHEN Cholesterol < 200 THEN 'Low'
        WHEN Cholesterol BETWEEN 200 AND 239 THEN 'Medium'
        WHEN Cholesterol >= 240 THEN 'High'
    END AS cholesterol_category,

    COUNT(*) AS total_patients,

    COUNT(CASE
        WHEN `Heart Attack Risk` = 1 THEN 1
    END) AS risk_patients,

    COUNT(CASE
        WHEN `Heart Attack Risk` = 1 THEN 1
    END) * 100.0 / COUNT(*) AS risk_percentage

FROM patients
GROUP BY cholesterol_category
ORDER BY risk_percentage DESC;


-- 4.2 Average cholesterol by heart attack risk
SELECT
    `Heart Attack Risk`,
    COUNT(*) AS patient_count,
    AVG(Cholesterol) AS average_cholesterol
FROM patients
GROUP BY `Heart Attack Risk`;


-- 4.3 Average BMI by heart attack risk
SELECT
    `Heart Attack Risk`,
    COUNT(*) AS patient_count,
    AVG(BMI) AS average_bmi
FROM patients
GROUP BY `Heart Attack Risk`;


-- 4.4 Average heart rate by heart attack risk
SELECT
    `Heart Attack Risk`,
    COUNT(*) AS patient_count,
    AVG(`Heart Rate`) AS average_heart_rate
FROM patients
GROUP BY `Heart Attack Risk`;

-- =====================================================
-- 5. GEOGRAPHIC ANALYSIS
-- =====================================================

-- 5.1 Heart attack risk by continent
SELECT
    Continent,
    COUNT(*) AS total_patients,

    COUNT(CASE
        WHEN `Heart Attack Risk` = 1 THEN 1
    END) AS risk_patients,

    COUNT(CASE
        WHEN `Heart Attack Risk` = 1 THEN 1
    END) * 100.0 / COUNT(*) AS risk_percentage

FROM patients
GROUP BY Continent
ORDER BY risk_percentage DESC;


-- 5.2 Top 5 continents by heart attack risk percentage
SELECT
    Continent,
    COUNT(*) AS total_patients,

    COUNT(CASE
        WHEN `Heart Attack Risk` = 1 THEN 1
    END) AS risk_patients,

    COUNT(CASE
        WHEN `Heart Attack Risk` = 1 THEN 1
    END) * 100.0 / COUNT(*) AS risk_percentage

FROM patients
GROUP BY Continent
ORDER BY risk_percentage DESC
LIMIT 5;


-- 5.3 Continents with sufficient patient count
SELECT
    Continent,
    COUNT(*) AS total_patients,

    COUNT(CASE
        WHEN `Heart Attack Risk` = 1 THEN 1
    END) AS risk_patients,

    COUNT(CASE
        WHEN `Heart Attack Risk` = 1 THEN 1
    END) * 100.0 / COUNT(*) AS risk_percentage

FROM patients
GROUP BY Continent
HAVING COUNT(*) >= 100
ORDER BY risk_percentage DESC;

-- =====================================================
-- 6. ADVANCED SQL ANALYSIS
-- =====================================================


-- 6.1 SUBQUERY
-- Patients whose age is above the overall average age

SELECT
    `Patient ID`,
    Age
FROM patients
WHERE Age > (
    SELECT AVG(Age)
    FROM patients
)
ORDER BY Age DESC;


-- 6.2 SUBQUERY
-- Patients whose cholesterol is above the overall average cholesterol

SELECT
    `Patient ID`,
    Age,
    Cholesterol
FROM patients
WHERE Cholesterol > (
    SELECT AVG(Cholesterol)
    FROM patients
)
ORDER BY Cholesterol DESC;


-- =====================================================
-- 6.3 CTE
-- Age group risk analysis
-- =====================================================

WITH age_risk_analysis AS (
    SELECT
        CASE
            WHEN Age BETWEEN 18 AND 29 THEN '18-29'
            WHEN Age BETWEEN 30 AND 39 THEN '30-39'
            WHEN Age BETWEEN 40 AND 49 THEN '40-49'
            WHEN Age BETWEEN 50 AND 59 THEN '50-59'
            ELSE '60+'
        END AS age_group,

        COUNT(*) AS total_patients,

        COUNT(CASE
            WHEN `Heart Attack Risk` = 1 THEN 1
        END) AS risk_patients,

        COUNT(CASE
            WHEN `Heart Attack Risk` = 1 THEN 1
        END) * 100.0 / COUNT(*) AS risk_percentage

    FROM patients
    GROUP BY age_group
)

SELECT *
FROM age_risk_analysis
ORDER BY risk_percentage DESC;


-- =====================================================
-- 6.4 WINDOW FUNCTION
-- Rank age groups by heart attack risk percentage
-- =====================================================

WITH age_risk_analysis AS (
    SELECT
        CASE
            WHEN Age BETWEEN 18 AND 29 THEN '18-29'
            WHEN Age BETWEEN 30 AND 39 THEN '30-39'
            WHEN Age BETWEEN 40 AND 49 THEN '40-49'
            WHEN Age BETWEEN 50 AND 59 THEN '50-59'
            ELSE '60+'
        END AS age_group,

        COUNT(*) AS total_patients,

        COUNT(CASE
            WHEN `Heart Attack Risk` = 1 THEN 1
        END) AS risk_patients,

        COUNT(CASE
            WHEN `Heart Attack Risk` = 1 THEN 1
        END) * 100.0 / COUNT(*) AS risk_percentage

    FROM patients
    GROUP BY age_group
)

SELECT
    *,
    RANK() OVER (
        ORDER BY risk_percentage DESC
    ) AS risk_rank
FROM age_risk_analysis;


-- =====================================================
-- 6.5 INNER JOIN
-- Average age by heart attack risk
-- =====================================================

SELECT
    patient_risk.`Heart Attack Risk`,
    AVG(patients.Age) AS average_age
FROM patients
INNER JOIN patient_risk
    ON patients.`Patient ID` = patient_risk.`Patient ID`
GROUP BY patient_risk.`Heart Attack Risk`;


-- =====================================================
-- 6.6 INNER JOIN + HAVING
-- Risk groups with average age greater than 50
-- =====================================================

SELECT
    patient_risk.`Heart Attack Risk`,
    AVG(patients.Age) AS average_age
FROM patients
INNER JOIN patient_risk
    ON patients.`Patient ID` = patient_risk.`Patient ID`
GROUP BY patient_risk.`Heart Attack Risk`
HAVING AVG(patients.Age) > 50;
