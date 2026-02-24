/*
Problem: 178. Rank Scores
Link: https://leetcode.com/problems/rank-scores/
Difficulty: Medium
Concept: Window Functions (DENSE_RANK), Sorting

Description:
Write a solution to find the rank of the scores. The ranking should be calculated according to the following rules:
- The scores should be ranked from the highest to the lowest.
- If there is a tie between two scores, both should have the same ranking.
- After a tie, the next ranking number should be the next consecutive integer value.
Return the result table ordered by score in descending order.
*/

SELECT score,
DENSE_RANK() OVER (ORDER BY score DESC) AS "rank"
FROM Scores;