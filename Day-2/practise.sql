--PROBLEM 1

-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/more-than-75-marks/problem?isFullScreen=true
-- Problem     Higher Than 75 Marks
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    sql
-- Status      Accepted
-- Submitted   2026-07-30, 10:00 a.m.
-- Technique   substring-sorting-with-secondary-id
-- Time        O(N log N)
-- Space       O(N)
-- Insight     The query filters records by marks and sorts the result set using the last three characters of the name as the primary key and the ID as the secondary key.
-- Interview   Before: "How would you sort by a suffix?" After: "I use the substring function to extract the last three characters, then apply a multi-column order by clause. This approach runs in O(N log N) time due to the sorting requirement, where N is the number of students meeting the marks threshold."
-- Pitfalls    (1) Using an incorrect starting index for the substring function which depends on the specific SQL dialect implementation.  (2) Failing to include the ID as a secondary sort key when names share the same last three characters.  (3) Assuming the length of all names is at least three characters, which might cause unexpected behavior if shorter names exist.
-- ──────────────────────────────────────────────────



SELECT name from students
where marks>75 
order by substring(name,len(name)-2,3) , id asc;



--PROBLEM 2

-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/select-by-id/problem?isFullScreen=true
-- Problem     Select By ID
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    sql
-- Status      Accepted
-- Submitted   2026-07-28, 08:06 p.m.
-- Technique   simple-where-clause-filter
-- Time        O(N)
-- Space       O(1)
-- Insight     The query retrieves all columns for a specific record by applying an equality filter on the primary key column.
-- Interview   Before: "How would you fetch a specific row by its unique identifier?" After: "I would use a SELECT statement with a WHERE clause filtering on the ID column, which runs in O(N) time complexity to scan the table for the matching record."
-- Pitfalls    (1) Failing to include all columns by using SELECT * instead of specific column names if the schema requires explicit selection.  (2) Assuming the ID column is indexed when the problem statement does not guarantee performance characteristics.
-- ──────────────────────────────────────────────────



SELECT * from city 
where id=1661;


-- Problem 3


