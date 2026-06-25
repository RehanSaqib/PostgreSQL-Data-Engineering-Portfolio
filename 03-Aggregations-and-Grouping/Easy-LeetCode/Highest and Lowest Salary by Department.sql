/*
Problem: Highest and Lowest Salary by Department
Difficulty: Easy
Concept: GROUP BY, MAX(), MIN()

Description:
Find the highest and lowest salary
for each department.
*/

SELECT
    department,
    MAX(salary) AS highest_salary,
    MIN(salary) AS lowest_salary
FROM Employee
GROUP BY department
ORDER BY department;