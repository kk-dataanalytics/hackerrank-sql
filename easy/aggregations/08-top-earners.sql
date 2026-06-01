-- Challenge: https://www.hackerrank.com/challenges/earnings-of-employees/problem

-- Question:
-- Find the maximum total earnings (salary x months) for all employees
-- and the total number of employees who have that maximum total earnings
-- Print both values as space-separated integers

-- Approach:
-- Total earnings = salary * months so needed to calculate that first
-- Used a subquery in WHERE to find employees matching the maximum earnings
-- CONCAT joins the two values with a space as required by the output format
-- The subquery runs first to get MAX(salary * months) then the outer
-- query filters and counts employees matching that value

-- Solution:
SELECT CONCAT(MAX(salary * months), ' ', COUNT(*))
FROM EMPLOYEE
WHERE salary * months = (SELECT MAX(salary * months) FROM EMPLOYEE);
