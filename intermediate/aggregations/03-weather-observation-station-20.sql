-- Challenge: https://www.hackerrank.com/challenges/weather-observation-station-20/problem

-- Question:
-- Query the median of the Northern Latitudes (LAT_N) from STATION
-- and round your answer to 4 decimal places

-- Approach:
-- MySQL has no built in MEDIAN() function so I used a correlated subquery
-- For each row I counted how many values are below it and how many are above it
-- The median is the value where both counts are equal
-- Table is aliased as s so the subqueries can reference the outer query's LAT_N

-- Solution:
SELECT ROUND(LAT_N, 4)
FROM STATION s
WHERE (SELECT COUNT(LAT_N) FROM STATION WHERE LAT_N < s.LAT_N) =
      (SELECT COUNT(LAT_N) FROM STATION WHERE LAT_N > s.LAT_N);
