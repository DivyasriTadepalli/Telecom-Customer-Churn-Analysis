-- CREATE DATABASE Indian_Telecom;
-- USE Indian_Telecom;
-- SELECT * FROM telecom;

-- List of state–city combinations  
SELECT state, city, COUNT(*) AS customer_count FROM telecom
GROUP BY state, city ORDER BY state, city;
--  Count of distinct states for each city
SELECT city, COUNT(DISTINCT state) AS number_of_states, COUNT(*) AS total_customers
FROM telecom GROUP BY city HAVING COUNT(DISTINCT state) > 1
ORDER BY number_of_states DESC, city;
--  Count of states, cities and combinations
SELECT COUNT(DISTINCT state) AS distinct_states, COUNT(DISTINCT city) AS distinct_cities, 
COUNT(DISTINCT CONCAT(state, '|', city))AS distinct_state_city_pairs FROM telecom;
-- customer churn count 
SELECT churn, COUNT(*) AS record_count FROM telecom
GROUP BY churn ORDER BY churn;
-- customer_id check(unique)
SELECT COUNT(DISTINCT customer_id) AS unique_customer_ids FROM telecom;

-- missing value check 
SELECT SUM(customer_id IS NULL) AS missing_customer_id,
    SUM(telecom_partner IS NULL) AS missing_telecom_partner,
    SUM(gender IS NULL) AS missing_gender,
    SUM(age IS NULL) AS missing_age,
    SUM(state IS NULL) AS missing_state,
    SUM(city IS NULL) AS missing_city,
    SUM(pincode IS NULL) AS missing_pincode,
    SUM(date_of_registration IS NULL) AS missing_registration_date,
    SUM(num_dependents IS NULL) AS missing_dependents,
    SUM(estimated_salary IS NULL) AS missing_salary,
    SUM(calls_made IS NULL) AS missing_calls,
    SUM(sms_sent IS NULL) AS missing_sms,
    SUM(data_used IS NULL) AS missing_data_used,
    SUM(churn IS NULL) AS missing_churn FROM telecom;
-- duplicate records check
SELECT customer_id, COUNT(*) AS record_count FROM telecom
GROUP BY customer_id HAVING COUNT(*) > 1;
