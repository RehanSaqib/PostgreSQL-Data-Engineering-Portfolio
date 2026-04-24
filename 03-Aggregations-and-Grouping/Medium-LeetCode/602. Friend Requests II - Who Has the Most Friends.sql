/*
Problem: 602. Friend Requests II: Who Has the Most Friends
Link: https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/
Difficulty: Medium

Concepts:
- UNION ALL
- GROUP BY
- COUNT
- ORDER BY
- LIMIT

Description:
Find the user (id) who has the highest number of friends.
Each record represents a friendship between requester_id and accepter_id.
Both sides should be counted.
*/

SELECT id, COUNT(*) AS freq
FROM (
    SELECT requester_id AS id FROM RequestAccepted
    UNION ALL
    SELECT accepter_id AS id FROM RequestAccepted
) AS t
GROUP BY id
ORDER BY freq DESC
LIMIT 1;