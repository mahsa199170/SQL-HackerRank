--QUESTION:
--A median is defined as a number separating the higher half of a data
--set from the lower half. Query the median of the Northern Latitudes (LAT_N)
-- from STATION and round your answer to 4 decimal places.


--SOLUTION:

SELECT ROUND(AVG(LAT_N), 4)
FROM (
  SELECT LAT_N, ROW_NUMBER() OVER (ORDER BY LAT_N) AS row_num
  FROM STATION
) sub
WHERE row_num IN (
  (SELECT (COUNT(*) + 1) / 2 FROM STATION),
  (SELECT (COUNT(*) + 2) / 2 FROM STATION)
);

--we cannot use count(*) which is an aggregate function directly inside where clause,
-- so we have to use this using select

--You cannot use count(*) directly in the WHERE clause of the subquery because
--count(*) is an aggregate function that calculates the number of rows in the
--entire result set, whereas the WHERE clause needs to filter the rows based
--on the row_num column, which is only available in the subquery.

--ROW_NUM is a function in SQL that assigns a unique sequential number to each row within a result set. It is commonly used in combination with the OVER clause to perform calculations on specific rows within the result set, such as calculating moving averages or identifying the first or last row in a sequence.

--In the context of the previous discussion, ROW_NUM is used to
--number the rows in the STATION table in ascending order based on
-- the LAT_N column. These row numbers are then used to identify the
--  median row(s) in the subquery, which is calculated based on the
--  total number of rows in the STATION table.