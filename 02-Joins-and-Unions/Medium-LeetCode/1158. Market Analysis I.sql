/*
Problem: 1158. Market Analysis I
Link: https://leetcode.com/problems/market-analysis-i/
Difficulty: Medium

Concepts:
- LEFT JOIN
- COUNT
- GROUP BY
- Date filtering

Description:
For each user, find:
1. Their join date
2. Number of orders they made as a buyer in 2019
*/

SELECT 
    u.user_id AS buyer_id,
    u.join_date,
    COUNT(o.order_id) AS orders_in_2019

FROM Users u

LEFT JOIN Orders o
ON u.user_id = o.buyer_id

GROUP BY u.user_id, u.join_date
having max(order_date)<2019-12-32
and min(order_date)>2019-01-01;