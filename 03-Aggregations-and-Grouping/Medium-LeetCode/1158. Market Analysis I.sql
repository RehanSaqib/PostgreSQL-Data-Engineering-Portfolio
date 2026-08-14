/*
Problem: 1158. Market Analysis I
Link: https://leetcode.com/problems/market-analysis-i/
Difficulty: Medium
Concept: LEFT JOIN, JOIN Conditions, GROUP BY, COUNT

Description:

Users Table:
+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| user_id        | int     |
| join_date      | date    |
| favorite_brand | varchar |
+----------------+---------+

user_id is the primary key.

Orders Table:
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| order_id      | int     |
| order_date    | date    |
| item_id       | int     |
| buyer_id      | int     |
| seller_id     | int     |
+---------------+---------+

order_id is the primary key.
buyer_id and seller_id reference Users.user_id.

Items Table:
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| item_id       | int     |
| item_brand    | varchar |
+---------------+---------+

item_id is the primary key.

Task:
Find for each user:
- their join date
- the number of orders they made as a buyer in 2019

Return the result in any order.

Example Output:
+-----------+------------+----------------+
| buyer_id  | join_date  | orders_in_2019 |
+-----------+------------+----------------+
| 1         | 2018-01-01 | 1              |
| 2         | 2018-02-09 | 2              |
| 3         | 2018-01-19 | 0              |
| 4         | 2018-05-21 | 0              |
+-----------+------------+----------------+
*/

SELECT 
    u.user_id AS buyer_id,
    u.join_date,
    COUNT(o.buyer_id) AS orders_in_2019
FROM users u
LEFT JOIN orders o
    ON u.user_id = o.buyer_id
    AND o.order_date BETWEEN '2019-01-01' AND '2019-12-31'
GROUP BY u.user_id, u.join_date;