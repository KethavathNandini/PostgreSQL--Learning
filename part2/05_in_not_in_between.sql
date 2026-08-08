/*POSTGRESQL — IN, NOT IN, BETWEEN

1. IN
------
• IN is used to check whether a value matches any value from a given list.
• It is a shorter and cleaner alternative to using multiple OR conditions.
• If the value matches at least one value in the list, the condition is TRUE.

Meaning:
IN = matches ANY value from the list

Example:
If the department is IN ('IT', 'HR', 'Sales'),
the employee can belong to IT, HR, or Sales.

Key Point:
IN is used when we want to check multiple possible values.


2. NOT IN
---------
• NOT IN is used to check whether a value does NOT match any value from a given list.
• It is used to exclude multiple values.
• The condition is TRUE when the value is not present in the list.

Meaning:
NOT IN = does NOT match ANY value in the list

Example:
If department is NOT IN ('IT', 'HR'),
employees from IT and HR are excluded.

Key Point:
NOT IN is used when we want to exclude multiple values.


3. BETWEEN
----------
• BETWEEN is used to check whether a value falls within a specified range.
• It is commonly used with numbers, dates, and other comparable values.
• BETWEEN includes both the starting and ending values.

Meaning:
BETWEEN = within a range, including both boundaries

Example:
Salary BETWEEN 30000 AND 60000

This includes:
30000
40000
50000
60000

It also includes the boundary values 30000 and 60000.

Key Point:
BETWEEN is inclusive.


4. NOT BETWEEN
--------------
• NOT BETWEEN is used to find values outside a specified range.
• It excludes the values that fall within the given range.

Meaning:
NOT BETWEEN = outside the specified range


5. IN vs NOT IN
---------------
IN:
• Includes matching values.
• Used to select from multiple options.

NOT IN:
• Excludes matching values.
• Used to remove multiple options.

Easy Memory:
IN     → INCLUDE matching values
NOT IN → EXCLUDE matching values


6. BETWEEN vs NOT BETWEEN
-------------------------
BETWEEN:
• Selects values inside the range.
• Includes both boundary values.

NOT BETWEEN:
• Selects values outside the range.


7. IMPORTANT POINTS
-------------------
• IN checks multiple specific values.
• NOT IN excludes multiple specific values.
• BETWEEN checks a range.
• NOT BETWEEN checks values outside a range.
• BETWEEN is inclusive of both boundaries.
• IN is often used instead of multiple OR conditions.
• Use parentheses around the values in an IN list.


8. EASY MEMORY TRICK
--------------------
IN          → ANY value in the list
NOT IN      → NONE of the values in the list
BETWEEN     → INSIDE the range
NOT BETWEEN → OUTSIDE the range


9. SIMPLE EXAMPLE
-----------------
Suppose employee salaries are:

25000
30000
40000
50000
60000
70000

BETWEEN 30000 AND 60000

Result:

30000
40000
50000
60000

NOT BETWEEN 30000 AND 60000

Result:

25000
70000


10. INTERVIEW/EXAM POINTS
-------------------------
• IN is used to compare a value with multiple values.
• NOT IN is used to exclude multiple values.
• BETWEEN is used for range checking.
• BETWEEN includes both lower and upper limits.
• IN is similar to combining multiple OR conditions.
• NOT IN is similar to excluding multiple values.
• NOT BETWEEN returns values outside the specified range.*/



SELECT name , category, price
FROM product
WHERE  category IN ('Electronics','Clothing');