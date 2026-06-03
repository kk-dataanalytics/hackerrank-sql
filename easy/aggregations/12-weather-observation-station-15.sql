-- Challenge: https://www.hackerrank.com/challenges/weather-observation-station-15/problem

-- Question:
-- Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N)
-- in STATION that is less than 137.2345, rounded to 4 decimal places

-- Approach:
-- Used a subquery to first find the MAX(LAT_N) below 137.2345
-- then used that result in the WHERE clause to get the corresponding LONG_W
-- cannot use MAX directly in WHERE so subquery handles that
-- first before the outer query gets the matching row's LONG_W value

-- Solution:
SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N = (SELECT MAX(LAT_N) FROM STATION WHERE LAT_N < 137.2345);
