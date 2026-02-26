/*
Problem: 182. Duplicate Emails
Link: https://leetcode.com/problems/duplicate-emails/
Difficulty: Easy
Concept: GROUP BY, HAVING

Description:
Write a solution to report all the duplicate emails.
Return the result table in any order.
*/

SELECT email AS Email
FROM Person
GROUP BY email
HAVING COUNT(email) > 1;