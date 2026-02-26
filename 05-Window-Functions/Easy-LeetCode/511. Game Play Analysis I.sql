/*
Problem: 511. Game Play Analysis I
Link: https://leetcode.com/problems/game-play-analysis-i/
Difficulty: Easy
Concept: Window Functions (DENSE_RANK), CTE

Description:
Find the first login date for each player using Window Functions.
*/

WITH ranked_date AS (
    SELECT player_id,event_date AS first_login,
    DENSE_RANK () OVER (PARTITION BY player_id ORDER BY event_date ASC) as rnk
    FROM Activity
)
SELECT player_id,first_login 
FROM ranked_date
WHERE rnk = 1 ;