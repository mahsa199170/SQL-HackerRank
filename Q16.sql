--QUESTION:
--Query the average population of all cities in CITY where District is California.


--SOLUTION:
SELECT AVG(POPULATION)
FROM CITY
WHERE DISTRICT = "CALIFORNIA";