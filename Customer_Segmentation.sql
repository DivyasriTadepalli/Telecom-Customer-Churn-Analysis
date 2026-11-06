-- USE Indian_Telecom;
-- SELECT * FROM telecom;

-- Churn rate according to age groups
SELECT CASE
        WHEN age < 25 THEN '18-24'
        WHEN age < 35 THEN '25-34'
        WHEN age < 45 THEN '35-44'
        WHEN age < 55 THEN '45-54'
        WHEN age < 65 THEN '55-64'
        ELSE '65+'
    END AS age_group,
    COUNT(*) AS total_customers,SUM(churn = 1) AS churned_customers,
    ROUND(100.0 * SUM(churn = 1) / COUNT(*), 2) AS churn_rate
FROM telecom GROUP BY age_group ORDER BY MIN(age);
-- churn rate according to no.of dependents
SELECT num_dependents,COUNT(*) AS total_customers,SUM(churn = 1) AS churned_customers,
ROUND(100.0 * SUM(churn = 1) / COUNT(*), 2) AS churn_rate FROM telecom
GROUP BY num_dependents ORDER BY num_dependents;
-- churn rate according to salary
SELECT CASE
        WHEN estimated_salary < 40000 THEN 'Below 40K'
        WHEN estimated_salary < 70000 THEN '40K-69K'
        WHEN estimated_salary < 100000 THEN '70K-99K'
        ELSE '100K+'
    END AS salary_group,
    COUNT(*) AS total_customers,SUM(churn = 1) AS churned_customers,
    ROUND(100.0 * SUM(churn = 1) / COUNT(*), 2) AS churn_rate FROM telecom
GROUP BY salary_group ORDER BY MIN(estimated_salary);
-- negative values in each churn group (0,1)
SELECT churn,COUNT(*) AS total_customers,
SUM(calls_made < 0 OR sms_sent < 0 OR data_used < 0) AS rows_with_negative_usage
FROM telecom GROUP BY churn ORDER BY churn;