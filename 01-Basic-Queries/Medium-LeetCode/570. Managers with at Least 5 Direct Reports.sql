/*
Problem: 570. Managers with at Least 5 Direct Reports
Link: https://leetcode.com/problems/managers-with-at-least-5-direct-reports/
Difficulty: Medium
Concept: Self-Join, GROUP BY, HAVING

Description:
Find managers who have at least five direct reports.
*/

-- Step 1: Join the Employee table with itself
-- e1 represents the Manager, e2 represents the Employees reporting to them
SELECT e1.name
FROM Employee e1
INNER JOIN Employee e2 ON e1.id = e2.managerId
GROUP BY e1.id, e1.name
HAVING COUNT(e2.id) >= 5;