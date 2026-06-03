-- Challenge: https://www.hackerrank.com/challenges/weather-observation-station-13/problem

-- Question:
-- Query the sum of Northern Latitudes (LAT_N) from STATION
-- having values greater than 38.7880 and less than 137.2345
-- Truncate the answer to 4 decimal places

-- Approach:
-- Used TRUNCATE instead of ROUND this time 
-- TRUNCATE cuts off decimal places without rounding up
-- WHERE filters LAT_N between the two values using AND
-- First time combining SUM with a range filter on the same column

-- Solution:
SELECT TRUNCATE(SUM(LAT_N), 4)
FROM STATION
WHERE LAT_N > 38.7880
AND LAT_N < 137.2345;
