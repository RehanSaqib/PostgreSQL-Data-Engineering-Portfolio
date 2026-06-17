/*
Problem: 1407. Top Travellers
Link: https://leetcode.com/problems/top-travellers/
Difficulty: Easy
Concept: LEFT JOIN, GROUP BY, COALESCE, ORDER BY

Description:
Report the distance travelled by each user.
Users with no rides should have a travelled
distance of 0.
*/

SELECT
    name,
    COALESCE(SUM(distance),0) AS travelled_distance
FROM Users u
LEFT JOIN Rides r
    ON u.id = r.user_id
GROUP BY r.user_id
ORDER BY SUM(distance) DESC,
         name ASC;