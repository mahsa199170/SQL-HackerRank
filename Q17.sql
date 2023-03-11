--QUESTION:

--Query the total population of all cities in CITY where District is California.


--SOLUTION:
SELECT SUM(POPULATION) FROM CITY
WHERE DISTRICT = "California";