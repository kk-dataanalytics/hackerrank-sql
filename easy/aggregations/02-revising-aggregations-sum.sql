-- Challenge: https://www.hackerrank.com/challenges/revising-aggregations-sum/problem

-- Question:
-- Query the total population of all cities in CITY where District is California

-- Approach:
-- Used SUM(POPULATION) with a WHERE filter on DISTRICT
-- Simple aggregation — the key is filtering first then summing
-- rather than summing everything and trying to filter after

-- Solution:
SELECT SUM(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';
