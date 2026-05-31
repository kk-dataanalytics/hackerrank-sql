-- Challenge: https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem

-- Question:
-- Query the average population of all cities in CITY where District is California

-- Approach:
-- Same pattern as the sum function but using AVG instead of SUM
-- Worth noting AVG automatically handles the division so no need
-- to manually divide SUM by COUNT

-- Solution:
SELECT AVG(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';
