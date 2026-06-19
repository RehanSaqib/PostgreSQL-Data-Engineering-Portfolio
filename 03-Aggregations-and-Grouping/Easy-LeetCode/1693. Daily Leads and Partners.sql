/*
Problem: 1693. Daily Leads and Partners
Link: https://leetcode.com/problems/daily-leads-and-partners/
Difficulty: Easy
Concept: GROUP BY, COUNT(DISTINCT)

Description:
For each date and product (make_name),
find the number of unique leads and
unique partners.
*/

SELECT
    date_id,
    make_name,
    COUNT(DISTINCT lead_id) AS unique_leads,
    COUNT(DISTINCT partner_id) AS unique_partners
FROM DailySales
GROUP BY date_id, make_name;