/*
Problem: 1731. The Number of Employees Which Report to Each Employee
Link: https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/
Difficulty: Easy
Concept: Self Join, GROUP BY, COUNT, AVG, ROUND

Description:
For each manager, find:
1. Number of employees reporting directly to them.
2. Average age of those employees (rounded to nearest integer).
Return the result ordered by employee_id.
*/

SELECT
    e1.employee_id,
    e1.name,
    COUNT(*) AS reports_count,
    ROUND(AVG(e2.age)) AS average_age
FROM Employees e1
JOIN Employees e2
    ON e1.employee_id = e2.reports_to
GROUP BY e1.employee_id, e1.name
ORDER BY e1.employee_id;