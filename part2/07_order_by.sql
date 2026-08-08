/*POSTGRESQL — ORDER BY

1. DEFINITION
--------------
• ORDER BY is used to sort the result of a query.
• It arranges the returned rows based on one or more columns.
• By default, ORDER BY sorts values in ASCENDING order.

Meaning:
ORDER BY = Sort the query result


2. ASCENDING ORDER (ASC)
------------------------
• ASC means ascending order.
• It is the default sorting order.
• Numbers are sorted from smallest to largest.
• Text is sorted alphabetically.
• Dates are sorted from oldest to newest.

Example:
ORDER BY price ASC

Meaning:
Sort products from lowest price to highest price.

Important:
ASC does not need to be written because it is the default.


3. DESCENDING ORDER (DESC)
--------------------------
• DESC means descending order.
• Numbers are sorted from largest to smallest.
• Text is sorted in reverse alphabetical order.
• Dates are sorted from newest to oldest.

Example:
ORDER BY price DESC

Meaning:
Sort products from highest price to lowest price.


4. ORDER BY SYNTAX
------------------
SELECT columns
FROM table
ORDER BY column_name;

The ORDER BY clause normally comes after:
• SELECT
• FROM
• WHERE
• GROUP BY
• HAVING

ORDER BY is generally placed near the end of the SELECT statement.


5. ORDER BY WITH WHERE
----------------------
• WHERE filters the rows first.
• ORDER BY then sorts the remaining rows.

Logical idea:

1. Select data
2. Filter data
3. Sort the result

Example meaning:
Find active products and then sort them by price.


6. SORTING BY MULTIPLE COLUMNS
------------------------------
• ORDER BY can use more than one column.
• The first column is used for the primary sorting.
• The second column is used when two or more rows have the same value in
  the first column.

Example:
ORDER BY category ASC, price DESC

Meaning:
• Sort categories alphabetically.
• Within each category, sort products from highest price to lowest price.


7. ASC AND DESC TOGETHER
------------------------
Different columns can have different sorting directions.

Example:
ORDER BY category ASC, price DESC

Meaning:
• Category → ascending
• Price → descending


8. ORDER BY WITH DISTINCT
-------------------------
• ORDER BY can be used with DISTINCT.
• The result is first made distinct and then sorted according to the
  ORDER BY requirement.


9. ORDER BY USING COLUMN POSITION
---------------------------------
PostgreSQL allows sorting using the position of a selected column.

For example, if the SELECT list contains:

1. name
2. price
3. category

You can sort using the column number.

Example:
ORDER BY 2

Meaning:
Sort using the second selected column.

However, using the actual column name is generally clearer.


10. ORDER BY WITH NULL
----------------------
PostgreSQL allows NULL values in sorted results.

Important default behavior:

• ASC → NULL values normally appear LAST.
• DESC → NULL values normally appear FIRST.

You can explicitly control this using:

NULLS FIRST
NULLS LAST


11. NULLS FIRST
---------------
• Places NULL values before non-NULL values.

Meaning:
NULL values appear at the beginning of the sorted result.


12. NULLS LAST
--------------
• Places NULL values after non-NULL values.

Meaning:
NULL values appear at the end of the sorted result.


13. ORDER BY WITH TEXT
---------------------
• Text values are sorted according to the database's collation rules.
• In simple cases, ascending order appears alphabetically.
• Descending order reverses the sorting order.


14. ORDER BY WITH NUMBERS
-------------------------
Ascending:
Smallest → Largest

Descending:
Largest → Smallest


15. ORDER BY WITH DATES
-----------------------
Ascending:
Oldest → Newest

Descending:
Newest → Oldest


16. ORDER BY WITH AGGREGATE FUNCTIONS
-------------------------------------
ORDER BY can also sort grouped or calculated results.

For example:
• Sort departments by their employee count.
• Sort categories by their average price.
• Sort results by total sales.

The sorting can be based on an aggregate result such as:
COUNT
SUM
AVG
MIN
MAX


17. ORDER OF COMMON SQL CLAUSES
-------------------------------
A common SELECT query is logically organized as:

SELECT
FROM
WHERE
GROUP BY
HAVING
ORDER BY
LIMIT

Remember:

WHERE  → filters rows
GROUP BY → groups rows
HAVING → filters groups
ORDER BY → sorts results
LIMIT → restricts number of results


18. ORDER BY VS WHERE
---------------------
WHERE:
• Filters records.
• Decides which rows should be included.

ORDER BY:
• Sorts the selected records.
• Decides the order in which rows are displayed.

Easy memory:

WHERE    → WHICH ROWS?
ORDER BY → WHAT ORDER?


19. ORDER BY VS GROUP BY
------------------------
ORDER BY:
• Sorts the result.
• Does not create groups.

GROUP BY:
• Groups rows with similar values.
• Commonly used with aggregate functions.

Easy memory:

GROUP BY  → MAKE GROUPS
ORDER BY  → SORT RESULTS


20. IMPORTANT POINTS
--------------------
• ORDER BY is used for sorting.
• ASC means ascending.
• DESC means descending.
• ASC is the default.
• Multiple columns can be used.
• Each column can have its own ASC or DESC direction.
• ORDER BY usually appears near the end of a SELECT query.
• WHERE filters rows; ORDER BY sorts rows.
• NULLS FIRST and NULLS LAST control the position of NULL values.
• ORDER BY can sort text, numbers, dates, and calculated results.


21. EASY MEMORY TRICK
---------------------
ORDER BY
→ SORT THE RESULT

ASC
→ LOW TO HIGH
→ A TO Z
→ OLD TO NEW

DESC
→ HIGH TO LOW
→ Z TO A
→ NEW TO OLD


22. INTERVIEW/EXAM POINTS
-------------------------
• ORDER BY sorts query results.
• Default order is ASC.
• DESC is used for reverse/descending order.
• Multiple columns can be specified.
• The first column has the highest sorting priority.
• Additional columns are used when previous values are equal.
• NULLS FIRST and NULLS LAST control NULL placement.
• ORDER BY does not permanently change the data in the table.
• It only changes the order of rows in the query result.*/



SELECT name , category, price 
FROM product
ORDER BY price ASC;

SELECT name , category, price 
FROM product
ORDER BY price DESC;