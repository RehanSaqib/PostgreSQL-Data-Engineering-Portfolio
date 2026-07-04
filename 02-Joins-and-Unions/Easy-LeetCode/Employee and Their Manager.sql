/*
Problem: Employee and Their Manager

Difficulty: Easy
Concept: SELF JOIN

Description:
A company stores employees and their managers
in the same Employee table.

Write an SQL query to return:

1. employee_name
2. manager_name

Include only employees who have a manager.

Order the result by employee_name.

Employee Table

+-------------+---------------+------------+
| employee_id | employee_name | manager_id |
+-------------+---------------+------------+
| 1           | Ali           | NULL       |
| 2           | Ahmed         | 1          |
| 3           | Rehan         | 1          |
| 4           | Bilal         | 2          |
| 5           | Hamza         | 2          |
+-------------+---------------+------------+

Expected Output

+---------------+--------------+
| employee_name | manager_name |
+---------------+--------------+
| Ahmed         | Ali          |
| Bilal         | Ahmed        |
| Hamza         | Ahmed        |
| Rehan         | Ali          |
+---------------+--------------+
*/

SELECT
    e.employee_name,
    m.employee_name AS manager_name
FROM Employee e
JOIN Employee m
    ON e.manager_id = m.employee_id
ORDER BY e.employee_name;