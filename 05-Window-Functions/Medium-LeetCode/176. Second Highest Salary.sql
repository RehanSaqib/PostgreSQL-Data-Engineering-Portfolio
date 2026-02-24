/*
Problem: 176. Second Highest Salary
Link: https://leetcode.com/problems/second-highest-salary/
Difficulty: Medium
Concept: Window Functions (DENSE_RANK), CTEs, and Null Handling (MAX)

Description:
Write a solution to find the second highest distinct salary from the Employee table. 
If there is no second highest salary, return null.
*/

WITH rank_salaries AS (
    SELECT salary,
    DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk
    FROM Employee
)

SELECT MAX(salary) AS SecondHighestSalary
FROM rank_salaries
WHERE rnk = 2;