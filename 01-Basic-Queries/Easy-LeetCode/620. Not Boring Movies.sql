/*
Problem: 620. Not Boring Movies
Link: https://leetcode.com/problems/not-boring-movies/
Difficulty: Easy

Concepts:
- WHERE
- MOD (%)
- ORDER BY

Description:
Find movies with odd-numbered IDs and description not equal to "boring".
Return the result ordered by rating in descending order.
*/

SELECT *
FROM Cinema
WHERE id % 2 = 1
  AND description != 'boring'
ORDER BY rating DESC;