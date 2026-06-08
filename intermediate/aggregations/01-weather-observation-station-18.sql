-- Challenge: https://www.hackerrank.com/challenges/weather-observation-station-18/problem

-- Question:
-- Consider P1(a,b) and P2(c,d) where a = MIN(LAT_N), b = MIN(LONG_W),
-- c = MAX(LAT_N), d = MAX(LONG_W)
-- Query the Manhattan Distance between P1 and P2 rounded to 4 decimal places
-- Manhattan Distance = |a - c| + |b - d|

-- Approach:
-- Manhattan Distance is the sum of absolute differences between coordinates
-- Used ABS to handle the absolute value of each difference
-- MAX and MIN aggregations used directly within ABS in a single query
-- No subquery needed since all four values come from the same table

-- Solution:
SELECT ROUND(ABS(MAX(LAT_N) - MIN(LAT_N)) + ABS(MAX(LONG_W) - MIN(LONG_W)), 4)
FROM STATION;
