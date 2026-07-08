/*
Problem: 1164. Product Price at a Given Date
Link: https://leetcode.com/problems/product-price-at-a-given-date/
Difficulty: Medium
Concept: Subquery, GROUP BY, MAX(), Date Filtering

Attempt 1

My Approach:
I tried to find each product's latest price change
on or before 2019-08-16.

Issue:
The subquery returns two columns:
- product_id
- MAX(change_date)

But the outer query compares only product_id using `=`.
A single `=` comparison needs one value, while this subquery
returns multiple product/date pairs.

Learning:
For multiple `(product_id, change_date)` pairs, use tuple `IN`:

WHERE (product_id, change_date) IN (...)
*/

SELECT
    product_id,
    new_price AS price
FROM Products
WHERE product_id = (
    SELECT
        product_id,
        MAX(change_date)
    FROM Products
    WHERE change_date <= '2019-08-16'
    GROUP BY product_id
);