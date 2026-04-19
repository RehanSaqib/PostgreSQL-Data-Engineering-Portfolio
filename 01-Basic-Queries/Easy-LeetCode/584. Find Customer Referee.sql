/*
Problem: 584. Find Customer Referee
Link: https://leetcode.com/problems/find-customer-referee/
Difficulty: Easy

Concept: Filtering (WHERE), NULL Handling

Description:
Find the names of customers who:
1. Are NOT referred by customer with id = 2
2. OR have no referee (NULL)

Return the result in any order.
*/

SELECT name
FROM Customer
WHERE referee_id IS NULL OR referee_id != 2;