/*
Problem: 1174. Immediate Food Delivery II
Link: https://leetcode.com/problems/immediate-food-delivery-ii/
Difficulty: Medium
Concept: CTE, WINDOW FUNCTION, ROW_NUMBER(), CASE WHEN

Description:
Find the percentage of immediate orders in the first orders
of all customers, rounded to 2 decimal places.
*/

WITH first_order AS (
    SELECT
        order_date,
        customer_pref_delivery_date,
        customer_id,
        ROW_NUMBER() OVER (
            PARTITION BY customer_id
            ORDER BY order_date ASC
        ) AS rnk
    FROM Delivery
)

SELECT
    ROUND(
        SUM(
            CASE
                WHEN order_date = customer_pref_delivery_date
                THEN 1
                ELSE 0
            END
        ) * 100 / COUNT(*),
        2
    ) AS immediate_percentage
FROM first_order
WHERE rnk = 1;