--QUESTION:

--We define an employee's total earnings to be their monthly SALARY * MONTHS worked, and the
--maximum total earnings to be the maximum total earnings for any employee in
-- the Employee table. Write a query to find the maximum total earnings for all
-- employees as well as the total number of employees who have maximum total earnings.
-- Then print these values as  space-separated integers.

--SAMPLE OUTPUT:  69952 1


--SOLUTION:


SELECT
      (MONTHS * SALARY),COUNT(*)
FROM EMPLOYEE
GROUP BY (MONTHS * SALARY)
ORDER BY MONTHS * SALARY DESC
LIMIT 1

---AGGREGATE FUNCTIONS ARE NOT ALLOWED IN GROUP BY CLAUSE
--WE CANNOT USE AN AGGREGTE FUNCTION IN A SUBQUERY THAT IS IN THE SAME SELECT STATEMENT AS ANOTHER AGGREGATE
