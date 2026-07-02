/*
Problem: Department Salary Comparison
Difficulty: Easy
Concept: Window Function, AVG() OVER(), PARTITION BY, CASE WHEN

Description:
For every employee, show their salary and the average salary
of their department.

Also add salary_status:

- 'Above Average' if employee salary is greater than department average
- 'Below or Equal Average' otherwise

Return:
1. employee_id
2. employee_name
3. department
4. salary
5. department_average_salary
6. salary_status

Order the result by department, then employee_id.
*/

SELECT
    employee_id,
    employee_name,
    department,
    salary,
    ROUND(
        AVG(salary) OVER (PARTITION BY department),
        2
    ) AS department_average_salary,
    CASE
        WHEN salary > AVG(salary) OVER (PARTITION BY department)
            THEN 'Above Average'
        ELSE 'Below or Equal Average'
    END AS salary_status
FROM Employee
ORDER BY department, employee_id;