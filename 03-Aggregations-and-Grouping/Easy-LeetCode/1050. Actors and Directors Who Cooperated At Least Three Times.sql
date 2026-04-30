/*
Problem: 1050. Actors and Directors Who Cooperated At Least Three Times
Link: https://leetcode.com/problems/actors-and-directors-who-cooperated-at-least-three-times/
Difficulty: Easy

Concepts:
- GROUP BY (multiple columns)
- COUNT
- HAVING

Description:
Find all (actor_id, director_id) pairs where they have cooperated at least 3 times.
*/

SELECT actor_id, director_id
FROM ActorDirector
GROUP BY actor_id, director_id
HAVING COUNT(*) >= 3;