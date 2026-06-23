/*
Problem: Long Employee Names
Difficulty: Easy
Concept: String Functions, LENGTH(), WHERE, ORDER BY

Description:
Find employees whose names contain
5 or more characters.
*/

SELECT
    employee_id,
    employee_name,
    LENGTH(employee_name) AS name_length
FROM Employee
WHERE LENGTH(employee_name) >= 5
ORDER BY name_length DESC;