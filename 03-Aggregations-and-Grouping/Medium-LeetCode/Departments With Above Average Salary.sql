/*
Problem: Departments With Above Average Salary
Difficulty: Medium
Concept: GROUP BY, AVG(), HAVING, Subquery
*/

SELECT
    department,
    ROUND(AVG(salary), 2) AS average_salary
FROM Employee
GROUP BY department
HAVING AVG(salary) >
(
    SELECT AVG(salary)
    FROM Employee
)
ORDER BY average_salary DESC;