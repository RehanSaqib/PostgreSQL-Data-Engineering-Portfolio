/*
Problem: 550. Game Play Analysis IV
Link: https://leetcode.com/problems/game-play-analysis-iv/
Difficulty: Medium
Concept: Window Functions (DENSE_RANK), Self-Join, Date Functions (DATEDIFF)

Description:
Find the fraction of players that logged in again on the day after their first login, 
rounded to 2 decimal places.
*/

WITH first_login AS (
    SELECT 
        player_id, 
        event_date,
        DENSE_RANK() OVER (PARTITION BY player_id ORDER BY event_date ASC) AS rnk
    FROM Activity
)

SELECT 
    ROUND(COUNT(DISTINCT a.player_id) / COUNT(DISTINCT f.player_id), 2) AS fraction 
FROM first_login f
LEFT JOIN Activity a ON f.player_id = a.player_id
    AND DATEDIFF(a.event_date, f.event_date) = 1
WHERE f.rnk = 1;