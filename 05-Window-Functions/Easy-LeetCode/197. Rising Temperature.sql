/*
Problem: 197. Rising Temperature
Link: https://leetcode.com/problems/rising-temperature/
Difficulty: Easy
Concept: Window Functions (LAG), CTE, Date Validation (DATEDIFF)

Description:
Find all dates' Id with higher temperatures compared to its previous dates (yesterday).
This solution uses LAG to avoid a self-join and DATEDIFF to handle non-consecutive dates.
*/

WITH prev_temp AS (
    SELECT 
        id,
        recordDate,
        temperature AS current_temp,
        LAG(temperature) OVER (ORDER BY recordDate) AS prev_day_temp,
        LAG(recordDate) OVER (ORDER BY recordDate) AS prev_date
    FROM Weather 
)
SELECT id
FROM prev_temp 

WHERE current_temp > prev_day_temp 
AND DATEDIFF(recordDate, prev_date) = 1;

