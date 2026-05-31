-- Challenge: https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem

-- Question:
-- Query a count of the number of cities in CITY having a Population larger than 100,000

-- Approach:
-- Straightforward COUNT(*) with a WHERE filter
-- First instinct was COUNT(ID) but COUNT(*) is cleaner
-- since we just need the number of matching rows

-- Solution:
SELECT COUNT(*)
FROM CITY
WHERE POPULATION > 100000;
