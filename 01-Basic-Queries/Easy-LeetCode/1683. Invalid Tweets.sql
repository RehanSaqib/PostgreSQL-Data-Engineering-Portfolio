/*
Problem: 1683. Invalid Tweets
Link: https://leetcode.com/problems/invalid-tweets/
Difficulty: Easy
Concept: String Functions, LENGTH()

Description:
Find the IDs of invalid tweets.
A tweet is invalid if its content
contains more than 15 characters.
*/

SELECT
    tweet_id
FROM Tweets
WHERE LENGTH(content) > 15 ;