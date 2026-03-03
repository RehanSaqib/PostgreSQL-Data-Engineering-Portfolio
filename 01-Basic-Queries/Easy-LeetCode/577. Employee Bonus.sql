/*
Problem: 577. Employee Bonus
Link: https://leetcode.com/problems/employee-bonus/
Difficulty: Easy
Concept: LEFT JOIN, IS NULL, Filtering
*/

SELECT e.name, b.bonus
FROM Employee e
LEFT JOIN Bonus b ON e.empId = b.empId
WHERE b.bonus < 1000 
OR b.bonus IS NULL; 