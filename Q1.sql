--QUESTION:

--Query a count of the number of cities in CITY having a Population larger than 100000 .


--SOLUTION:

SELECT COUNT(*)
FROM CITY
WHERE population > 100000;