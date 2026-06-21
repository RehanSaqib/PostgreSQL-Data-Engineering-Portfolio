/*
Problem: Customer Orders Report
Difficulty: Easy
Concept: INNER JOIN, GROUP BY, COUNT

Description:
A company wants to know how many orders
each customer has placed.

Return:
- customer_name
- total_orders

Order the result by total_orders in descending order.
*/

SELECT
    customer_name,
    COUNT(order_id) AS total_orders
FROM Customers c
JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY customer_name
ORDER BY total_orders DESC;