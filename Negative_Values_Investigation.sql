-- USE Indian_Telecom;
-- SELECT * FROM telecom;

-- sample 10 rows of data
SELECT customer_id,calls_made,sms_sent,data_used,churn FROM telecom
WHERE calls_made < 0 OR sms_sent < 0 OR data_used < 0 LIMIT 10;
-- about -1 is a special code or common -ve value
SELECT SUM(calls_made = -1) AS calls_minus_1,SUM(sms_sent = -1) AS sms_minus_1,
SUM(data_used = -1) AS data_minus_1,SUM(calls_made < -1) AS calls_below_minus_1,
SUM(sms_sent < -1) AS sms_below_minus_1,SUM(data_used < -1) AS data_below_minus_1 FROM telecom;
-- Avg's of non negative values
SELECT churn,COUNT(*) AS customer_count,ROUND(AVG(calls_made), 2) AS avg_calls,
ROUND(AVG(sms_sent), 2) AS avg_sms,ROUND(AVG(data_used), 2) AS avg_data FROM telecom
WHERE calls_made >= 0 AND sms_sent >= 0 AND data_used >= 0 GROUP BY churn;
-- pattern of -ve values
SELECT calls_made AS value,COUNT(*) AS row_count FROM telecom
WHERE calls_made < 0 GROUP BY calls_made ORDER BY calls_made;