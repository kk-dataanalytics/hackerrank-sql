-- Challenge: https://www.hackerrank.com/challenges/japanese-cities-name/problem

-- Question:
-- Query the names of all Japanese cities in the CITY table.
-- The COUNTRYCODE for Japan is JPN.

-- Solution:
SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'JPN';
