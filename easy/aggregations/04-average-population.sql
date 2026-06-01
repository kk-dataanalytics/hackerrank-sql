-- Challenge: https://www.hackerrank.com/challenges/average-population/problem

-- Question:
-- Query the average population for all cities in CITY, 
-- rounded down to the nearest integer

-- Approach:
-- Used ROUND(AVG(POPULATION), 0) to get the average and round it
-- No WHERE filter needed this time — averaging across all cities
-- The 0 in ROUND specifies zero decimal places

-- Solution:
SELECT ROUND(AVG(POPULATION), 0)
FROM CITY;
