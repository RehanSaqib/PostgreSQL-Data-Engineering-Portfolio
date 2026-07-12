/*
Problem: 1164. Product Price at a Given Date
Link: https://leetcode.com/problems/product-price-at-a-given-date/
Difficulty: Medium
Concept: Subquery, GROUP BY, MAX(), UNION, HAVING

Description:
Find the price of every product on the date
2019-08-16.

Rules:
- Use the latest price change on or before 2019-08-16.
- If a product has no price change before or on that date,
  its price is 10.
*/

SELECT
    product_id,
    new_price AS price
FROM Products
WHERE (product_id, change_date) IN
(
    SELECT
        product_id,
        MAX(change_date)
    FROM Products
    WHERE change_date <= '2019-08-16'
    GROUP BY product_id
)

UNION

SELECT
    product_id,
    10 AS price
FROM Products
GROUP BY product_id
HAVING MIN(change_date) > '2019-08-16';