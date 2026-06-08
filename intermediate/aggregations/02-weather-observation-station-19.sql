-- Challenge: https://www.hackerrank.com/challenges/weather-observation-station-19/problem

-- Question:
-- Consider P1(a,c) and P2(b,d) where a and b are MIN and MAX of LAT_N
-- and c and d are MIN and MAX of LONG_W
-- Query the Euclidean Distance between P1 and P2 to 4 decimal places
-- Euclidean Distance = SQRT((a-b)^2 + (c-d)^2)

-- Approach:
-- Euclidean Distance requires squaring the differences rather than
-- taking absolute values as in Manhattan Distance
-- Used POWER(x, 2) to square each coordinate difference
-- SQRT applied to the sum of both squared differences
-- ROUND to 4 decimal places applied to the final result

-- Solution:
SELECT ROUND(SQRT(POWER(MAX(LAT_N) - MIN(LAT_N), 2) + POWER(MAX(LONG_W) - MIN(LONG_W), 2)), 4)
FROM STATION;
