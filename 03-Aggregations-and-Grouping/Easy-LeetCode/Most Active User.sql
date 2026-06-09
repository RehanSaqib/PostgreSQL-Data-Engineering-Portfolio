/*
Problem: Most Active User
Difficulty: Easy
Concept: GROUP BY, COUNT, Derived Table (DF)

Description:
Find the user who performed the highest
number of activities.
*/

SELECT user_id
FROM (
    SELECT
        user_id,
        COUNT(*) AS total_activities
    FROM UserActivity
    GROUP BY user_id
) AS df
ORDER BY total_activities DESC
LIMIT 1;