WITH prev AS
(
     SELECT
           employee_id,
           employee_name,
           salary,
          LAG(salary) OVER (ORDER BY employee_id) AS p
    FROM Employee
)

SELECT
    employee_id,
    employee_name,
     salary,
     p AS previous_salary
 FROM prev ; 