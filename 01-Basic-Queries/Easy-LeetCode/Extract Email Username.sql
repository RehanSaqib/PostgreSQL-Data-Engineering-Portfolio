/*
Problem: Extract Email Username

Difficulty: Easy
Concept: String Functions, SUBSTRING_INDEX()

Description:
A company wants to extract the username part
from each employee's email address.

The username is the text before the '@' symbol.

Return:

1. employee_id
2. employee_name
3. email
4. email_username

Order the result by employee_id.

Employee Table

+-------------+---------------+------------------------+
| employee_id | employee_name | email                  |
+-------------+---------------+------------------------+
| 1           | Ali           | ali.khan@gmail.com     |
| 2           | Ahmed         | ahmed123@yahoo.com     |
| 3           | Rehan         | rehan_saqib@gmail.com  |
| 4           | Bilal         | bilal@outlook.com      |
+-------------+---------------+------------------------+

Expected Output

+-------------+---------------+------------------------+----------------+
| employee_id | employee_name | email                  | email_username |
+-------------+---------------+------------------------+----------------+
| 1           | Ali           | ali.khan@gmail.com     | ali.khan       |
| 2           | Ahmed         | ahmed123@yahoo.com     | ahmed123       |
| 3           | Rehan         | rehan_saqib@gmail.com  | rehan_saqib    |
| 4           | Bilal         | bilal@outlook.com      | bilal          |
+-------------+---------------+------------------------+----------------+
*/

SELECT
    employee_id,
    employee_name,
    email,
    SUBSTRING_INDEX(email, '@', 1) AS email_username
FROM Employee
ORDER BY employee_id;