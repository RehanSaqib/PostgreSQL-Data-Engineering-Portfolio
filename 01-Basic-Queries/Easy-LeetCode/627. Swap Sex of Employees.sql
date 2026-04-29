/*
Problem: 627. Swap Sex of Employees
Link: https://leetcode.com/problems/swap-sex/
Difficulty: Easy

Concepts:
- UPDATE
- CASE
- Conditional logic

Description:
Swap all 'm' and 'f' values in the sex column using a single update statement.
*/

UPDATE Salary
SET sex = CASE
    WHEN sex = 'm' THEN 'f'
    ELSE 'm'
END;