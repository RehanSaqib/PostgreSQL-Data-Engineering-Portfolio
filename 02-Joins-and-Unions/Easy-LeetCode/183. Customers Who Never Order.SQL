/*
Problem: 183. Customers Who Never Order
Link: https://leetcode.com/problems/customers-who-never-order/
Difficulty: Easy
Concept: LEFT JOIN, Filtering NULLs

Description:
Write a solution to find all customers who never order anything.
Return the result table in any order.
*/

SELECT c.name AS Customers
FROM Customers c
LEFT JOIN Orders o ON c.id = o.customerId
WHERE o.id IS NULL;