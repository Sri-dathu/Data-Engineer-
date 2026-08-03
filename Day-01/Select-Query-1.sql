-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/revising-the-select-query/problem?isFullScreen=true
-- Problem     Revising the Select Query I
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    sql
-- Status      Accepted
-- Submitted   2026-07-28, 07:47 p.m.
-- Technique   select-where-clause-filtering
-- Time        O(N)
-- Space       O(N)
-- Insight     The query retrieves all columns for rows in the city table that satisfy both the population threshold and the country code equality constraint.
-- Interview   Before: "How do I filter rows based on multiple conditions?" After: "Use the WHERE clause with AND to combine filters. This operation runs in O(N) time as it performs a linear scan of the table to identify cities with population > 100000 and CountryCode 'USA'."
-- Pitfalls    (1) Failing to use the correct case for the CountryCode string literal 'USA' which may be case-sensitive depending on the database collation.  (2) Using an incorrect comparison operator instead of the strictly greater than operator required for populations larger than 100000.
-- ──────────────────────────────────────────────────



SELECT * from city 
where population >100000 and countrycode="usa";