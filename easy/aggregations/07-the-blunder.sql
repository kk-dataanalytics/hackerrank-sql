-- Challenge: https://www.hackerrank.com/challenges/the-blunder/problem

-- Question:
-- Samantha miscalculated average salaries by removing all zeros from salary values
-- Find the difference between the actual average and the miscalculated average
-- rounded up to the nearest integer

-- Approach:
-- Used REPLACE to strip zeros from Salary to simulate the miscalculation
-- Then subtracted miscalculated AVG from actual AVG
-- CEIL rounds up to nearest integer as required
-- Had to think about what REPLACE does to a number before the logic clicked

-- Solution:
SELECT CEIL(AVG(SALARY) - AVG(REPLACE(Salary, '0', '')))
FROM EMPLOYEES;
