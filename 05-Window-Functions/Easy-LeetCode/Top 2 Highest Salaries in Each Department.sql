/*
Problem: Top 2 Highest Salaries in Each Department

Difficulty: Easy
Concept: DENSE_RANK(), OVER(), PARTITION BY

Description:
A company wants to identify the top 2 highest-paid
employees from each department.

If two employees have the same salary,
they should receive the same rank.

Return:

1. employee_id
2. employee_name
3. department
4. salary
5. salary_rank

Only return employees whose salary_rank is 1 or 2.

Order the result by department,
salary DESC,
employee_name.

Employee Table

+-------------+---------------+------------+--------+
| employee_id | employee_name | department | salary |
+-------------+---------------+------------+--------+
| 1           | Ali           | IT         | 70000  |
| 2           | Ahmed         | IT         | 65000  |
| 3           | Bilal         | IT         | 65000  |
| 4           | Hamza         | IT         | 50000  |
| 5           | Rehan         | HR         | 60000  |
| 6           | Asad          | HR         | 55000  |
| 7           | Usman         | HR         | 55000  |
| 8           | Saad          | HR         | 45000  |
+-------------+---------------+------------+--------+

Expected Output

+-------------+---------------+------------+--------+-------------+
| employee_id | employee_name | department | salary | salary_rank |
+-------------+---------------+------------+--------+-------------+
| 5           | Rehan         | HR         | 60000  | 1           |
| 6           | Asad          | HR         | 55000  | 2           |
| 7           | Usman         | HR         | 55000  | 2           |
| 1           | Ali           | IT         | 70000  | 1           |
| 2           | Ahmed         | IT         | 65000  | 2           |
| 3           | Bilal         | IT         | 65000  | 2           |
+-------------+---------------+------------+--------+-------------+
*/

WITH salary_ranking AS
(
    SELECT
        employee_id,
        employee_name,
        department,
        salary,
        DENSE_RANK() OVER
        (
            PARTITION BY department
            ORDER BY salary DESC
        ) AS salary_rank
    FROM Employee
)

SELECT
    employee_id,
    employee_name,
    department,
    salary,
    salary_rank
FROM salary_ranking
WHERE salary_rank <= 2
ORDER BY
    department,
    salary DESC,
    employee_name;