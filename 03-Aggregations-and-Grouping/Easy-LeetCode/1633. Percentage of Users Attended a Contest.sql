/*
Problem: 1633. Percentage of Users Attended a Contest
 Link: https://leetcode.com/problems/percentage-of-users-attended-a-contest/
 Difficulty: Easy
 Concept: JOIN, GROUP BY, COUNT(), Subquery, ROUND()

 Description:
 Calculate the percentage of users
 who registered for each contest.

Formula:

Percentage =
(Registered Users / Total Users) × 100

Round the result to 2 decimal places.

Order the result by:
1. percentage DESC
2. contest_id ASC
*/

SELECT
    r.contest_id,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM Users),
        2
    ) AS percentage
FROM  Register r
GROUP BY  r.contest_id
ORDER BY  percentage DESC,
         contest_id ASC;