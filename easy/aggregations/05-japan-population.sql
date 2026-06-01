-- Challenge: https://www.hackerrank.com/challenges/agg-populations/problem

-- Question:
-- Query the sum of the populations for all Japanese cities in CITY
-- The COUNTRYCODE for Japan is JPN

-- Approach:
-- Same SUM pattern as the California problem but filtering on COUNTRYCODE
-- instead of DISTRICT this time — good reminder that WHERE can filter
-- on any column, not just the one you're aggregating

-- Solution:
SELECT SUM(POPULATION)
FROM CITY
WHERE COUNTRYCODE = 'JPN';
