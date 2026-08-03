/*
Problem: Employees With Gmail Accounts
Difficulty: Easy
Concept: LIKE, String Filtering

Description:
A company wants to identify employees
who use Gmail accounts.

Return:
1. employee_id
2. employee_name
3. email

Only include employees whose email
ends with '@gmail.com'.

Order the result by employee_id.
*  ?
*/
 SELECT
    employee_id,
    employee_name,
    email
FROM Employee
WHERE email LIKE '%@gmail.com'
ORDER BY employee_id;