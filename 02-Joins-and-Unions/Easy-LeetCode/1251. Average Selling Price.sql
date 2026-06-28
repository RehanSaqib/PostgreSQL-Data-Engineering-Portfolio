/*
Problem: 1251. Average Selling Price
Link: https://leetcode.com/problems/average-selling-price/
Difficulty: Easy
Concept: LEFT JOIN, BETWEEN, GROUP BY, SUM(), COALESCE(), ROUND()

Description:
Calculate the average selling price for each product.

Formula:
Average Selling Price =
Total Revenue / Total Units Sold

Revenue = Price × Units

If a product has no sales, return 0.
*/

SELECT
    p.product_id,
    COALESCE(
        ROUND(
            SUM(p.price * u.units) / SUM(u.units),
            2
        ),
        0
    ) AS average_price
FROM Prices p
LEFT JOIN UnitsSold u
    ON p.product_id = u.product_id
   AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;