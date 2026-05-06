/*
Problem: 1148. Article Views I
Link: https://leetcode.com/problems/article-views-i/
Difficulty: Easy

Concepts:
- WHERE
- GROUP BY
- HAVING
- ORDER BY

Description:
Find all authors who viewed at least one of their own articles.
Return the result sorted by id in ascending order.
*/

SELECT author_id AS id
FROM Views
WHERE author_id = viewer_id
GROUP BY author_id
HAVING COUNT(*) >= 1
ORDER BY id ASC;