/*
Problem: Employee Salary Ranking
Difficulty: Easy
Concept: Window Function, DENSE_RANK()

Description:
Rank employees according to salary.
Employees having the same salary
receive the same rank.
*/

SELECT
    employee_id,
    employee_name,
    salary,
    DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM Employee;