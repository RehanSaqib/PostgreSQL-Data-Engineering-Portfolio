/*
Problem: 1327. List the Products Ordered in a Period
Link: https://leetcode.com/problems/list-the-products-ordered-in-a-period/
Difficulty: Easy
Concept: JOIN, GROUP BY, HAVING, DATE FILTERING

Description:
Find the names of products that have at least
100 units ordered during February 2020 and
report their total ordered units.
*/

SELECT
    product_name,
    SUM(unit) AS unit
FROM Products p
JOIN Orders o
    ON p.product_id = o.product_id
WHERE order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY p.product_id, product_name
HAVING SUM(unit) >= 100;