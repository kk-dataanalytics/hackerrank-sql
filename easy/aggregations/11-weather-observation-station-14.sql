-- Challenge: https://www.hackerrank.com/challenges/weather-observation-station-14/problem

-- Question:
-- Query the greatest value of Northern Latitudes (LAT_N) from STATION
-- that is less than 137.2345, truncated to 4 decimal places

-- Approach:
-- Used MAX with a WHERE filter to find the greatest LAT_N below the threshold
-- TRUNCATE to 4 decimal places as required
-- Builds on Station 13 so same TRUNCATE pattern but MAX instead of SUM
-- and only an upper bound filter rather than a range

-- Solution:
SELECT TRUNCATE(MAX(LAT_N), 4)
FROM STATION
WHERE LAT_N < 137.2345;
