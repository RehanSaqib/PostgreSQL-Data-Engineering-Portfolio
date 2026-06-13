/*
Problem: Most Active Customer
Difficulty: Easy
Concept: GROUP BY, COUNT
*/

SELECT customer_id
FROM Orders
GROUP BY customer_id
ORDER BY COUNT(*) DESC
LIMIT 1;