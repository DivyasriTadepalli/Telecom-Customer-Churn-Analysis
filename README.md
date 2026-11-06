# Telecom Customer Churn Analysis

## Project Overview

In this project, I analysed customer churn using a dataset of 2,026 telecom customers. My goal was to explore customer retention patterns and understand how churn varies across different customer segments and telecom partners.

I started by exploring the dataset and checking its quality using Excel and MySQL. I then used SQL to analyse churn rates, compare customer groups, study usage behaviour, and investigate unusual negative values in calls, SMS, and data usage.

After completing the analysis, I built an interactive Power BI dashboard with key performance indicators, visual comparisons, and filters to explore customer churn from different perspectives.

The project covers:

- Overall customer, churned customer, and retained customer counts.
- Churn-rate comparison across telecom partners.
- Customer segmentation by age, salary, and number of dependents.
- Usage comparisons based on calls, SMS, and data consumption.
- Investigation of unusual negative values and their potential impact on the analysis.

**Tools used:** Excel, MySQL, and Power BI.

---

## Dataset Source

The dataset was obtained from Mendeley Data:

[Telecom Customer Churn Dataset](https://data.mendeley.com/datasets/px3dt72xdw/1)

- **Total records:** 2,026
- **Total columns:** 14

---

## Key Findings

- Analysed 2,026 customers, of whom 393 had churned, resulting in an overall churn rate of **19.40%**.
- Vodafone recorded the highest churn rate (**21.28%**), while Airtel had the lowest (**17.16%**).
- Customers aged 35–44 had the highest churn rate (**20.71%**) among the age groups analysed.
- Customers in the below-40K salary group had the highest churn rate (**23.67%**).
- Average calls, SMS, and data usage were relatively similar between churned and retained customers.
- Identified negative values in usage-related columns and investigated their distribution and potential impact on the analysis.

---

## Data Quality Observations

- No missing values were identified across the 14 columns.
- No duplicate customer IDs were found.
- Negative values were identified in calls, SMS, and data usage columns.
- The original values were preserved, and a separate analysis was performed using records with no negative usage values.

---

## Tools & Technologies

- **Excel:** Initial dataset inspection.
- **MySQL:** Data exploration, data quality checks, SQL analysis, and customer segmentation.
- **Power BI:** Interactive dashboard development and data visualization.

---

## Dashboard Preview

The Power BI dashboard presents customer churn from two perspectives:

1. **Customer Churn Overview:** Overall customer metrics, churn distribution, telecom partner comparisons, and city-category comparisons.
2. **Customer Behavior & Usage Insights:** Churn patterns across age, salary, and dependent groups, along with calls, SMS, and data usage comparisons.

