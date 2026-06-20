/*
Problem: 1661. Average Time of Process per Machine
Link: https://leetcode.com/problems/average-time-of-process-per-machine/
Difficulty: Easy
Concept: Self Join, AVG, GROUP BY

Description:
Find the average processing time for each machine.
Processing time = end timestamp - start timestamp.
Round the result to 3 decimal places.
*/

SELECT

    a.machine_id,
    ROUND(
        AVG(b.timestamp - a.timestamp),
        3
    ) AS processing_time
FROM Activity a

JOIN Activity b
    ON a.machine_id = b.machine_id
    AND a.process_id = b.process_id
    WHERE a.activity_type = 'start'
    AND b.activity_type = ' end '
    GROUP BY a.machine_id  ;