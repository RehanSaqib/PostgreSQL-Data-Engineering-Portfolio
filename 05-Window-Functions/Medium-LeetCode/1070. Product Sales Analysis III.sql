/*
Problem: 1070. Product Sales Analysis III
Link: https://leetcode.com/problems/product-sales-analysis-iii/
Difficulty: Medium
Concept: Window Function, DENSE_RANK(), PARTITION BY

Description:
Find all sales that occurred in the first year
each product was sold.

For each product:
- Identify its earliest sale year.
- Return every sale made in that first year.

Return:
1. product_id
2. first_year
3. quantity
4. price
*/

WITH first_years AS
(
    SELECT
        product_id,
        year,
        quantity,
        price,
        DENSE_RANK() OVER
        (
            PARTITION BY product_id
            ORDER BY year
        ) AS rnk
    FROM Sales
)

SELECT
    product_id,
    year AS first_year,
    quantity,
    price
FROM first_years
WHERE rnk = 1;