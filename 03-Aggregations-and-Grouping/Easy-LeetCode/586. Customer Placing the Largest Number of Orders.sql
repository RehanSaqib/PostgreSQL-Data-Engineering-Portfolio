/*
Problem: 586. Customer Placing the Largest Number of Orders
Link: https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/
Difficulty: Easy

Concepts:
- GROUP BY
- COUNT
- ORDER BY
- LIMIT

Description:
Find the customer_number who has placed the highest number of orders.
*/

SELECT customer_number
FROM Orders
GROUP BY customer_number
ORDER BY COUNT(*) DESC
LIMIT 1;