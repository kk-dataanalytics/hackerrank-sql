-- Challenge: https://www.hackerrank.com/challenges/weather-observation-station-2/problem

-- Question:
-- Query the sum of LAT_N and sum of LONG_W from the STATION table
-- Both values rounded to 2 decimal places and printed space-separated

-- Approach:
-- Used SUM on both columns simultaneously in one SELECT
-- ROUND with 2 decimal places applied to each SUM
-- CONCAT joins the two results with a space as required

-- Solution:
SELECT CONCAT(ROUND(SUM(LAT_N), 2), ' ', ROUND(SUM(LONG_W), 2))
FROM STATION;
