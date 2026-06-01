-- Challenge: https://www.hackerrank.com/challenges/population-density-difference/problem

-- Question:
-- Query the difference between the maximum and minimum populations in CITY

-- Approach:
-- Used MAX and MIN together in a single SELECT statement
-- You can do arithmetic directly on aggregate functions
-- so no need for subqueries or intermediate steps

-- Solution:
SELECT MAX(POPULATION) - MIN(POPULATION)
FROM CITY;
