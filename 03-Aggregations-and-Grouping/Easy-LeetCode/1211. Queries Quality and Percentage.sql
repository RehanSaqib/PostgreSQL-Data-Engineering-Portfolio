/*
Problem: 1211. Queries Quality and Percentage
Link: https://leetcode.com/problems/queries-quality-and-percentage/
Difficulty: Easy

Concepts:
- AVG
- CASE
- GROUP BY
- ROUND
- Percentage calculation

Description:
For each query_name:
1. Calculate query quality = average(rating / position)
2. Calculate poor query percentage = percentage of queries with rating < 3
Both values should be rounded to 2 decimal places.
*/

SELECT 
    query_name,

    ROUND(AVG(rating / position), 2) AS quality,

    ROUND(
        AVG(
             CASE 
                 WHEN rating < 3 THEN 100
                 ELSE  0
             END
        ),
    2) AS poor_query_percentage

FROM Queries
GROUP BY query_name;