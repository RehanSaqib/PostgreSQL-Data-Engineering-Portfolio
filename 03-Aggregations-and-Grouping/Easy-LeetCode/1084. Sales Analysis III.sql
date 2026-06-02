/*
Problem: 1084. Sales Analysis III
Link: https://leetcode.com/problems/sales-analysis-iii/
Difficulty: Easy

Concepts:
- JOIN
- GROUP BY
- MIN / MAX
- HAVING

Description:
Find products that were ONLY sold in the first quarter of 2019
(i.e., between 2019-01-01 and 2019-03-31).
*/

SELECT s.product_id, p.product_name
FROM Product p
JOIN Sales s ON p.product_id =  s.product_id
GROUP BY s.product_id
HAVING MIN(s.sale_date)  >=  '2019-01-01'
   AND MAX(s.sale_date)  <=  '2019-03-31';