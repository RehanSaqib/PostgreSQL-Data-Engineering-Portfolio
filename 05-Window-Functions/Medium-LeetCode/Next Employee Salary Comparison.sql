/*
Problem: Next Employee Salary Comparison

Difficulty: Medium
Concept: LEAD(), OVER(), CASE WHEN

Description:
A company wants to compare every employee's salary
with the next employee's salary based on employee_id.

Return:

1. employee_id
2. employee_name
3. salary
4. next_salary
5. salary_status

salary_status should contain:

- 'Higher'  -> if current salary > next salary
- 'Lower'   -> if current salary < next salary
- 'Equal'   -> if salaries are equal
- 'No Next Employee' -> if there is no next employee

Order the result by employee_id.

Employee Table

+-------------+---------------+--------+
| employee_id | employee_name | salary |
+-------------+---------------+--------+
| 1           | Ali           | 50000  |
| 2           | Ahmed         | 65000  |
| 3           | Bilal         | 65000  |
| 4           | Hamza         | 55000  |
| 5           | Rehan         | 70000  |
+-------------+---------------+--------+

Expected Output

+-------------+---------------+--------+-------------+------------------+
| employee_id | employee_name | salary | next_salary | salary_status    |
+-------------+---------------+--------+-------------+------------------+
| 1           | Ali           | 50000  | 65000       | Lower            |
| 2           | Ahmed         | 65000  | 65000       | Equal            |
| 3           | Bilal         | 65000  | 55000       | Higher           |
| 4           | Hamza         | 55000  | 70000       | Lower            |
| 5           | Rehan         | 70000  | NULL        | No Next Employee |
+-------------+---------------+--------+-------------+------------------+
*/

WITH salary_comparison AS
(
    SELECT
        employee_id,
        employee_name,
        salary,
        LEAD(salary) OVER
        (
            ORDER BY employee_id
        ) AS next_salary
    FROM Employee
)

SELECT
    employee_id,
    employee_name,
    salary,
    next_salary,
    CASE
        WHEN next_salary IS NULL THEN 'No Next Employee'
        WHEN salary > next_salary THEN 'Higher'
        WHEN salary < next_salary THEN 'Lower'
        ELSE 'Equal'
    END AS salary_status
FROM salary_comparison
ORDER BY employee_id;