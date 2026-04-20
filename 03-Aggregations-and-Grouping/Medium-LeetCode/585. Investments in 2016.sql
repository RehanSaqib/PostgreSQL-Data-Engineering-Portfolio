/*
Problem: 585. Investments in 2016
Link: https://leetcode.com/problems/investments-in-2016/
Difficulty: Medium

Concepts:
- GROUP BY
- HAVING
- Subqueries
- Aggregation

Description:
Find the sum of tiv_2016 for policyholders who:
1. Have duplicate tiv_2015 values
2. Have unique (lat, lon) locations
*/

SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM Insurance
WHERE tiv_2015 IN (
    SELECT tiv_2015
    FROM Insurance
    GROUP BY tiv_2015
    HAVING COUNT(*) > 1
)
AND (lat, lon) IN (
    SELECT lat, lon
    FROM Insurance
    GROUP BY lat, lon
    HAVING COUNT(*) = 1
);