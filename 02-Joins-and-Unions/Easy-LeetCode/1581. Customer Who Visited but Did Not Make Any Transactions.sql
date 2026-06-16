/*
Problem: 1581. Customer Who Visited but Did Not Make Any Transactions
Link: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/
Difficulty: Easy
Concept: LEFT JOIN, NULL Handling, GROUP BY

Description:
Find customers who visited the mall but did not
make any transactions. Return the customer_id
and the number of such visits.
*/

SELECT
    customer_id,
    COUNT(*) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
    ON v.visit_id = t.visit_id
WHERE t.visit_id IS NULL
GROUP BY customer_id;