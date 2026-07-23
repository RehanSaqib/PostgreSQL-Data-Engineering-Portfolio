/*
Problem: 1729. Find Followers Count
Link: https://leetcode.com/problems/find-followers-count/
Difficulty: Easy
Concept: GROUP BY, COUNT()

Description:
For each user, find the total number
of followers and return the result
ordered by user_id.
*/

SELECT
    user_id,
    COUNT(follower_id) AS followers_count
FROM Followers
GROUP BY user_id
 ORDER BY user_id ASC ;