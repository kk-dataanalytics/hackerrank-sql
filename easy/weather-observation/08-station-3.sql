-- Challenge: https://www.hackerrank.com/challenges/weather-observation-station-3/problem

-- Question:
-- Query a list of CITY names from STATION for cities that have
-- an even ID number. Exclude duplicates from the answer.

-- Solution:
SELECT DISTINCT CITY
FROM STATION
WHERE MOD(ID, 2) = 0;
