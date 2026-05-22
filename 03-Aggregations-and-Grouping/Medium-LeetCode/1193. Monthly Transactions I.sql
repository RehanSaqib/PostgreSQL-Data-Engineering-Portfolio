/*
Problem: 1193. Monthly Transactions I
Link: https://leetcode.com/problems/monthly-transactions-i/
Difficulty: Medium
Concept: GROUP BY, CASE WHEN, AGGREGATE FUNCTIONS

Description:
Write an SQL query to find for each month and country:
- Number of transactions
- Total transaction amount
- Number of approved transactions
- Total approved transaction amount

Return the result table in any order.
*/

SELECT 
    DATE_FORMAT(trans_date, '%Y-%m') AS month,
    country,
    COUNT(id) AS trans_count,
    SUM(
        CASE
            WHEN state = 'approved' THEN 1
            ELSE 0
        END
    ) AS approved_count,
    SUM(amount) AS trans_total_amount,
    SUM(
        CASE
            WHEN state = 'approved' THEN amount
            ELSE 0
        END
    ) AS approved_total_amount
FROM Transactions
GROUP BY month, country;