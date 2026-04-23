/*
Problem: 596. Classes More Than 5 Students
Link: https://leetcode.com/problems/classes-more-than-5-students/
Difficulty: Easy

Concepts:
- GROUP BY
- COUNT
- HAVING

Description:
Find all classes that have at least 5 students.
*/

SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(*) >= 5;