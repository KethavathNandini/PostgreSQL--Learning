/*LIMIT & OFFSET — PostgreSQL

LIMIT
• Used to restrict the number of rows returned.
• Answers: "How many rows should I get?"
• LIMIT 5 → returns maximum 5 rows.

OFFSET
• Used to skip a number of rows.
• Answers: "How many rows should I skip?"
• OFFSET 5 → skips the first 5 rows.

LIMIT + OFFSET
• Used mainly for pagination.
• OFFSET skips rows.
• LIMIT returns the required number of rows.

Example:
LIMIT 10 OFFSET 20

Meaning:
• Skip first 20 rows.
• Return the next 10 rows.

Pagination:
Page 1 → OFFSET 0,  LIMIT 10
Page 2 → OFFSET 10, LIMIT 10
Page 3 → OFFSET 20, LIMIT 10

Important:
• Use ORDER BY with LIMIT/OFFSET for consistent results.
• LIMIT = number of rows to return.
• OFFSET = number of rows to skip.

Easy memory:
LIMIT  → SHOW
OFFSET → SKIP */

SELECT name , price
FROM product
ORDER BY price ASC
LIMIT 5;


SELECT name, Price
FROM product
ORDER BY name ASC
LIMIT 5 OFFSET 1;


SELECT name, Price
FROM product
ORDER BY name ASC
LIMIT 5 OFFSET 2;

SELECT name, Price
FROM product
ORDER BY name ASC
LIMIT 5 OFFSET 0;
