-- Challenge: https://www.hackerrank.com/challenges/weather-observation-station-16/problem

-- Question:
-- Query the smallest Northern Latitude (LAT_N) from STATION
-- that is greater than 38.7780, rounded to 4 decimal places

-- Approach:
-- Similiar to Station 15 but using MIN instead of MAX and a lower bound filter
-- Subquery finds the MIN(LAT_N) above 38.7780 first
-- then the outer query finds and rounds that value

-- Solution:
SELECT ROUND(LAT_N, 4)
FROM STATION
WHERE LAT_N = (SELECT MIN(LAT_N) FROM STATION WHERE LAT_N > 38.7780);
