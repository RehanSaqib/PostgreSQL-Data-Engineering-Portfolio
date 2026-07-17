/*
Problem: Departments With Above Average Salary

Difficulty: Medium
Concept: GROUP BY, AVG(), HAVING, Subquery

Description:
A company wants to identify departments
whose average salary is greater than
the average salary of all employees.

Return:

1. department
2. average_salary

Round the average salary to 2 decimal places.

Order the result by average_salary DESC.

Employee Table

+-------------+---------------+------------+--------+
| employee_id | employee_name | department | salary |
+-------------+---------------+------------+--------+
| 1           | Ali           | IT         | 70000  |
| 2           | Ahmed         | IT         | 60000  |
| 3           | Bilal         | HR         | 50000  |
| 4           | Hamza         | HR         | 45000  |
| 5           | Rehan         | Sales      | 80000  |
| 6           | Asad          | Sales      | 90000  |
| 7           | Usman         | Finance    | 55000  |
| 8           | Saad          | Finance    | 50000  |
+-------------+---------------+------------+--------+

Expected Output

+------------+----------------+
| department | average_salary |
+------------+----------------+
| Sales      | 85000.00       |
| IT         | 65000.00       |
+------------+----------------+
*/
/*
Problem: Departments With Above Average Salary
Difficulty: Medium
Concept: GROUP BY, AVG(), HAVING, Subquery
*/

SELECT
    department,
    ROUND(AVG(salary), 2) AS average_salary
FROM Employee
GROUP BY department
HAVING AVG(salary) >
(
    SELECT AVG(salary)
    FROM Employee
)
ORDER BY average_salary DESC;