/*
Problem: 175. Combine Two Tables
Link: https://leetcode.com/problems/combine-two-tables/
Difficulty: Easy
Concept: Joins (Left Outer Join)

Description: 
Write a solution to report the first name, last name, city, and state of each person 
in the Person table. If the address of a personId is not present in the Address table, 
report null instead.
*/

SELECT 
    p.firstName, 
    p.lastName, 
    a.city, 
    a.state
FROM Person p
LEFT OUTER JOIN Address a 
    ON p.personId = a.personId;