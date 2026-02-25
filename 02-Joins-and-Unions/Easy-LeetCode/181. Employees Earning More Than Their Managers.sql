/*
Problem: 181. Employees Earning More Than Their Managers
Link: https://leetcode.com/problems/employees-earning-more-than-their-managers/
Difficulty: Easy
Concept: Self Join

Description:
Write a solution to find the employees who earn more than their managers.
Return the result table in any order.
*/

SELECT e.name AS Employee
FROM Employee e
INNER JOIN Employee m ON e.managerId = m.id
WHERE e.salary > m.salary;