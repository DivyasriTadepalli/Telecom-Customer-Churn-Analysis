-- USE Indian_Telecom;
-- SELECT * FROM telecom;

-- count of min and max values
SELECT MIN(age) AS min_age, MAX(age) AS max_age,
    MIN(num_dependents) AS min_dependents, MAX(num_dependents) AS max_dependents,
    MIN(estimated_salary) AS min_salary, MAX(estimated_salary) AS max_salary,
    MIN(calls_made) AS min_calls, MAX(calls_made) AS max_calls,
    MIN(sms_sent) AS min_sms, MAX(sms_sent) AS max_sms,
    MIN(data_used) AS min_data_used, MAX(data_used) AS max_data_used FROM telecom;
 -- negative value count 
SELECT sum(calls_made<0), sum(sms_sent<0), sum(data_used<0), 
sum(calls_made < 0 OR sms_sent < 0 OR data_used < 0) as negative_rows FROM telecom ;
-- customer count for telecom partners 
SELECT telecom_partner, COUNT(*) AS customer_count FROM telecom
GROUP BY telecom_partner ORDER BY customer_count DESC;
-- customers by both gender and telecom partner
SELECT gender, telecom_partner, COUNT(*) AS customer_count FROM telecom
GROUP BY gender, telecom_partner ORDER BY gender,customer_count DESC;
-- churn rate % of every telecom partner
SELECT telecom_partner,COUNT(*) AS total_customers,SUM(churn = 1) AS churned_customers,
ROUND(100.0 * SUM(churn = 1) / COUNT(*), 2) AS churn_rate_percentage FROM telecom
GROUP BY telecom_partner ORDER BY churn_rate_percentage DESC;
-- churn rate % according to calls made
SELECT churn,COUNT(*) AS total_customers,ROUND(AVG(calls_made), 2) AS avg_calls
FROM telecom GROUP BY churn ORDER BY churn;
-- churn rate % according to sms made
SELECT churn,COUNT(*) AS total_customers,ROUND(AVG(sms_sent), 2) AS avg_sms
FROM telecom GROUP BY churn ORDER BY churn;
-- churn rate % according to data used
SELECT churn,COUNT(*) AS total_customers,ROUND(AVG(data_used), 2) AS avg_data_used
FROM telecom GROUP BY churn ORDER BY churn;
