/* POSTGRESQL — IS NULL AND IS NOT NULL

1. NULL
--------
• NULL represents a missing, unknown, or unavailable value.
• NULL is NOT the same as 0.
• NULL is NOT the same as an empty string.
• NULL means that a value is not known or not provided.


2. IS NULL
----------
• IS NULL is used to find records where a column contains NULL.
• It checks whether a value is missing.

Meaning:
IS NULL = value is missing / unknown

Example:
If a product description is NULL,
IS NULL will find that product.

Key Point:
Use IS NULL when you want to find missing values.


3. IS NOT NULL
--------------
• IS NOT NULL is used to find records where a column contains a value.
• It excludes rows where the column is NULL.

Meaning:
IS NOT NULL = value is available / not missing

Key Point:
Use IS NOT NULL when you want to find records that have a value.


4. IMPORTANT — DO NOT USE = NULL
--------------------------------
Incorrect:

column = NULL

Incorrect:

column <> NULL

Reason:
NULL represents an unknown value, so normal comparison operators
cannot be used to check for NULL.


5. CORRECT WAY
--------------
To find NULL values:

column IS NULL

To find non-NULL values:

column IS NOT NULL


6. EXAMPLE
----------
Suppose a product table contains:

Name            Description
--------------------------------
Mouse           Wireless mouse
T-Shirt         NULL
Shoes           Leather shoes
Laptop          NULL

IS NULL:

Finds:
T-Shirt
Laptop

IS NOT NULL:

Finds:
Mouse
Shoes


7. IS NULL vs IS NOT NULL
-------------------------
IS NULL:
• Finds missing values.
• Checks whether the value is NULL.

IS NOT NULL:
• Finds available values.
• Checks whether the value is not NULL.


8. NULL vs EMPTY VALUE
----------------------
NULL:
• Value is unknown or missing.

Empty string:
• A value exists, but it contains no characters.

These are different.

NULL ≠ empty string


9. NULL vs ZERO
---------------
NULL:
• No known value.

0:
• Actual numeric value zero.

These are different.

NULL ≠ 0


10. USING WITH AND / OR
-----------------------
IS NULL and IS NOT NULL can be combined with logical operators.

Example:

A column is NULL
AND another condition is TRUE.

Or:

A column is NULL
OR another condition is TRUE.


11. EASY MEMORY TRICK
---------------------
IS NULL
→ Find missing values

IS NOT NULL
→ Find available values


12. INTERVIEW/EXAM POINTS
------------------------
• NULL represents an unknown or missing value.
• Use IS NULL to check for NULL.
• Use IS NOT NULL to check for non-NULL values.
• Never use = NULL to check for NULL.
• Never use <> NULL to check for non-NULL values.
• NULL is different from 0.
• NULL is different from an empty string.
• NULL participates in SQL's three-valued logic:
  TRUE, FALSE, UNKNOWN.*/