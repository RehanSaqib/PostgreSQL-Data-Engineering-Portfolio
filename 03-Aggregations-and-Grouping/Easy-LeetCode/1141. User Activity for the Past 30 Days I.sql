/*
Problem: 1141. User Activity for the Past 30 Days I
Link: https://leetcode.com/problems/user-activity-for-the-past-30-days-i/
Difficulty: Easy

Concepts:
- WHERE (date filtering)
- COUNT DISTINCT
- GROUP BY

Description:
Find the number of active users per day for the last 30 days ending on 2019-07-27.
A user is active if they have at least one activity on that day.
*/

SELECT activity_date AS day,
       COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date BETWEEN '2019-06-28' AND '2019-07-27'
GROUP BY activity_date;