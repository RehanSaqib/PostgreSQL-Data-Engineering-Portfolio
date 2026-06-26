/*
Problem: Employees Whose Names Start With 'A'
Difficulty: Easy
Concept: LIKE, ORDER BY

Description:
A company wants to identify employees
whose names start with the letter 'A'.

Return:

1. employee_id
2. employee_name

Order the result by employee_name
in ascending order.
*/

SELECT
    employee_id,
    employee_name
FROM Employee
WHERE employee_name LIKE 'A%'
ORDER BY employee_name;