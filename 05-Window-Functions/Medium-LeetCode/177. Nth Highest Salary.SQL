/*
Problem: 177. Nth Highest Salary
Link: https://leetcode.com/problems/nth-highest-salary/
Difficulty: Medium
Concept: Window Functions (DENSE_RANK), CTEs, User-Defined Functions (UDFs), and Null Handling

Description:
Write a solution to find the nth highest distinct salary from the Employee table. 
If there are less than n distinct salaries, return null.
*/

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (

WITH rank_salary AS(
SELECT salary ,
DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk
FROM Employee
)
SELECT MAX(salary)
FROM rank_salary
WHERE rnk=N 
 
  );