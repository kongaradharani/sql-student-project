# SQL Fraud Detection Project

This project demonstrates how to detect potential fraudulent transactions using SQL queries on a sample financial transactions table. 
It is designed as a beginner-friendly SQL project for portfolio purposes, showcasing data analysis and anomaly detection skills.

## Table Schema

| Column           | Type           | Description                         |
|-----------------|----------------|-------------------------------------|
| transaction_id   | INT PRIMARY KEY | Unique ID for each transaction      |
| account_id       | INT             | ID of the account performing transaction |
| amount           | DECIMAL(10,2)   | Transaction amount                  |
| transaction_time | TIMESTAMP       | Timestamp of the transaction        |
| location         | VARCHAR(50)     | Location of the transaction         |

## Queries Included

### Query 1 – Detect Large Transactions
Identifies transactions above 10,000 which could indicate potential fraud.  
![Query 1 Output](screenshots/query1_large_transactions.png)

### Query 2 – Rapid Transactions
Detects accounts performing multiple transactions in a short period (e.g., more than 5 transactions in one hour).  
![Query 2 Output](screenshots/query2_rapid_transactions.png)

### Query 3 – Night Transactions
Finds transactions occurring between 1 AM and 5 AM, which may be unusual activity.  
![Query 3 Output](screenshots/query3_night_transactions.png)

### Query 4 – Multiple Locations
Identifies accounts using more than 3 different locations, which could indicate suspicious behavior.  
![Query 4 Output](screenshots/query4_multiple_locations.png)

## Tools Used
- MySQL / MySQL Workbench  

## How to Run  
1. Import the `transactions_sample_data.sql` into MySQL.  
2. Open `fraud_detection_queries.sql` in MySQL Workbench and execute queries.  
3. View results in the Result Grid or screenshots folder.
