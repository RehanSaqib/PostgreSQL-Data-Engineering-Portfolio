/*
Problem: Department Salary Summary
Difficulty: Easy
Concept: GROUP BY, COUNT, AVG, SUM

Description:
Find for each department:
1. Number of employees
2. Average salary
3. Total salary

Return the result ordered by department name.
*/

SELECT
    department,
    COUNT(*) AS total_employees,
    ROUND(AVG(salary)) AS average_salary,
    SUM(salary) AS total_salary
FROM Employee
GROUP BY department
ORDER BY department;