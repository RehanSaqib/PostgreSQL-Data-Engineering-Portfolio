/*
Problem: 1378. Replace Employee ID With The Unique Identifier
Link: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/
Difficulty: Easy
Concept: LEFT JOIN

Description:
Show the unique ID of each employee.
If an employee does not have a unique ID,
display NULL instead.
*/

SELECT
    unique_id,
    name
FROM Employees e
LEFT JOIN EmployeeUNI e2
    ON e.id = e2.id;