/*
Problem: 180. Consecutive Numbers
Link: https://leetcode.com/problems/consecutive-numbers/
Difficulty: Medium
Concept: Window Functions (LAG), CTE, Filtering

Description:
Find all numbers that appear at least three times consecutively.
Return the result table in any order.
*/

WITH repeat_number AS (
    SELECT 
        id, 
        num,
        LAG(num) OVER (ORDER BY id ASC) AS prev_num,
        LAG(num, 2) OVER (ORDER BY id ASC) AS prev_prev_num
    FROM Logs
)
SELECT DISTINCT num AS ConsecutiveNums 
FROM repeat_number
WHERE num = prev_num AND num = prev_prev_num;