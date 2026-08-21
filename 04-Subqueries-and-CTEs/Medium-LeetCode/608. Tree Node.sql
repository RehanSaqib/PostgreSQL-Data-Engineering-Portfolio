/*
Problem: 608. Tree Node
Link: https://leetcode.com/problems/tree-node/
Difficulty: Medium
Concept: CASE WHEN, SUBQUERY

Description:
Report the type of each node in the tree:
- "Root"  -> if p_id is NULL
- "Leaf"  -> if node has no children
- "Inner" -> otherwise
*/

SELECT
    id,
    CASE
        WHEN p_id IS NULL
        THEN 'Root'

        WHEN id NOT IN (
              SELECT p_id
              FROM  Tree
              WHERE p_id IS  NOT  NULL
        )
        THEN 'Leaf'

        ELSE 'Inner'
    END AS type
FROM Tree;