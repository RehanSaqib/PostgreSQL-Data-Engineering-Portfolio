/*
Problem: 619. Biggest Single Number
Link: https://leetcode.com/problems/biggest-single-number/
Difficulty: Easy

Concepts:
- GROUP BY
- COUNT
- HAVING
- Subquery
- IN
- MAX

Description:
Find the largest number that appears only once in the table.
If no such number exists, return NULL.
*/

SELECT MAX(num) AS num
FROM MyNumbers
WHERE num IN (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(*) = 1
);