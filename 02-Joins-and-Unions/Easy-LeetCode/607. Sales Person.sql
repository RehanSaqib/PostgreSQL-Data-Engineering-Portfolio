/*
Problem: 607. Sales Person
Link: https://leetcode.com/problems/sales-person/
Difficulty: Easy

Concepts:
- JOIN
- Subquery
- NOT IN

Description:
Find the names of all salespersons who did NOT have any orders related to the company "RED".
*/

SELECT name
FROM SalesPerson
WHERE sales_id NOT IN (
    SELECT o.sales_id
    FROM Orders o
    JOIN Company c ON o.com_id = c.com_id
    WHERE c.name = 'RED'
);