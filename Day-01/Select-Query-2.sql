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