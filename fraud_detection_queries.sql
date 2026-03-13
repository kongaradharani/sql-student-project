-- FRAUD DETECTION QUERIES

-- Query 1: Large Transactions
SELECT * FROM transactions
WHERE amount > 10000;

-- Query 2: Rapid Transactions
SELECT account_id, COUNT(*)
FROM transactions
WHERE transaction_time > NOW() - INTERVAL 1 HOUR
GROUP BY account_id
HAVING COUNT(*) > 5;

-- Query 3: Night Transactions
SELECT *
FROM transactions
WHERE HOUR(transaction_time) BETWEEN 1 AND 5;

-- Query 4: Multiple Locations
SELECT account_id, COUNT(DISTINCT location)
FROM transactions
GROUP BY account_id
HAVING COUNT(DISTINCT location) > 3;
