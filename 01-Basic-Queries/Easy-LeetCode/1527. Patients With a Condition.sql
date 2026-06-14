/*
Problem: 1527. Patients With a Condition
Link: https://leetcode.com/problems/patients-with-a-condition/
Difficulty: Easy
Concept: LIKE, Pattern Matching

Description:
Find patients who have Type I Diabetes.
A valid Type I Diabetes condition always
starts with the prefix 'DIAB1'.
*/

SELECT
    patient_id,
    patient_name,
    conditions
FROM Patients
WHERE conditions LIKE 'DIAB1%'
   OR conditions LIKE '% DIAB1%';