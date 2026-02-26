/*
Problem: 185. Department Top Three Salaries
Link: https://leetcode.com/problems/department-top-three-salaries/
Difficulty: Hard
Concept: Window Functions (DENSE_RANK), Common Table Expressions (CTE), Joins

Description:
Find the employees who are high earners in each department. 
A high earner is someone who has a salary in the top three unique salaries 
for that department.
*/

WITH max_salary AS (
    SELECT  e.name AS Employee,e.salary AS Salary , d.name AS Department,
    DENSE_RANK () OVER (PARTITION BY d.name ORDER BY e.salary DESC) AS rnk
    FROM Employee e 
    INNER JOIN Department d ON e.departmentId = d.id
)
SELECT Department ,Employee ,  Salary
FROM max_salary
WHERE rnk <= 3;