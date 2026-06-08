-- Challenge: https://www.hackerrank.com/challenges/weather-observation-station-17/problem

-- Question:
-- Query the Western Longitude (LONG_W) where the smallest Northern Latitude (LAT_N)
-- in STATION is greater than 38.7780, rounded to 4 decimal places

-- Approach:
-- Subquery finds the MIN(LAT_N) above 38.7780 first
-- then the outer query finds the corresponding LONG_W value
-- Can't use MIN directly in WHERE so the subquery handles that step
-- ROUND to 4 decimal places applied to the final LONG_W result

-- Solution:
SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N = (SELECT MIN(LAT_N) FROM STATION WHERE LAT_N > 38.7780);
