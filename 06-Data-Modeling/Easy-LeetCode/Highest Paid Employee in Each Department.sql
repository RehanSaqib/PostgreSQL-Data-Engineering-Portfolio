/*
Problem: Highest Paid Employee in Each Department
Difficulty: Easy
Concept: ROW_NUMBER(), PARTITION BY

Description:
Find the highest paid employee
from each department.
*/

WITH ranked_employees AS
(
    SELECT
        employee_id,
        employee_name,
        department,
        salary,
        ROW_NUMBER() OVER (
            PARTITION BY department
            ORDER BY salary DESC, employee_id
        ) AS rn
    FROM Employee
)

SELECT
    department,
    employee_name,
    salary
FROM ranked_employees
WHERE rn = 1
ORDER BY department;