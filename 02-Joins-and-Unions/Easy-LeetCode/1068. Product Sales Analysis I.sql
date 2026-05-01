/*
Problem: 1068. Product Sales Analysis I
Link: https://leetcode.com/problems/product-sales-analysis-i/
Difficulty: Easy

Concepts:
- JOIN
- Foreign Key
- Basic selection

Description:
Retrieve product_name, year, and price for each sale by joining Sales and Product tables using product_id.
*/

SELECT p.product_name, s.year, s.price
FROM Sales s
JOIN Product p
ON s.product_id = p.product_id;