-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true
-- Problem     Top Earners
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    sql
-- Status      Accepted
-- Submitted   2026-07-30, 10:24 a.m.
-- Technique   group-by-aggregation-sort
-- Time        O(N log N)
-- Space       O(N)
-- Insight     The query calculates total earnings per employee, groups identical earnings to count occurrences, and selects the highest value by sorting in descending order.
-- Interview   Before: "I would iterate through the table to find the max earnings and then count the occurrences." After: "I used a group-by aggregation with an order-by clause to identify the maximum earnings and count in O(N log N) time, which handles the requirement to return both values efficiently."
-- Pitfalls    (1) Failing to group by the calculated earnings expression results in an invalid query for aggregate functions.  (2) Using an incorrect sort order would return the minimum earnings instead of the maximum.  (3) Omitting the count function prevents identifying the number of employees sharing the maximum earnings value.
-- ──────────────────────────────────────────────────


SELECT top 1 salary*months as earnings, count(*) 
from Employee group by salary*months 
order by earnings desc 


-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-18/problem?isFullScreen=true
-- Problem     Weather Observation Station 18
-- Difficulty  Medium
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    sql
-- Status      Accepted
-- Submitted   2026-07-30, 10:42 a.m.
-- Technique   aggregate-math-calculation
-- Time        O(N)
-- Space       O(1)
-- Insight     The Manhattan distance between two points (a, b) and (c, d) is calculated by summing the absolute differences of their coordinates, which simplifies to the sum of the range of each coordinate set.
-- Interview   Before: "How would you calculate the Manhattan distance between the extreme points of a dataset?" After: "I aggregate the min and max values for each dimension in O(N) time, then compute the sum of absolute differences, ensuring the result is rounded to four decimal places as required."
-- Pitfalls    (1) Failing to use the ABS function, which results in incorrect distances when the difference between coordinates is negative.  (2) Neglecting the rounding requirement, which leads to precision errors if the database default output exceeds four decimal places.  (3) Misinterpreting the Manhattan distance formula by attempting to use Euclidean distance instead.
-- ──────────────────────────────────────────────────



SELECT CONVERT(DECIMAL(10,4),
    ABS(MAX(LAT_N) - MIN(LAT_N)) +
    ABS(MAX(LONG_W) - MIN(LONG_W))
)
FROM STATION;