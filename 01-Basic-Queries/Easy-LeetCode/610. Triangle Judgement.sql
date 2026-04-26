/*
Problem: 610. Triangle Judgement
Link: https://leetcode.com/problems/triangle-judgement/
Difficulty: Easy

Concepts:
- CASE
- Conditional logic
- Arithmetic conditions

Description:
For each row, determine whether the given sides can form a triangle.
A triangle is valid if:
x + y > z AND x + z > y AND y + z > x
*/

SELECT 
    x, y, z,
    CASE 
        WHEN x + y > z AND x + z > y AND y + z > x THEN 'Yes'
        ELSE 'No'
    END AS triangle
FROM Triangle;