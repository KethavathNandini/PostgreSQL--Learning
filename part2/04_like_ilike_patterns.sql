-- like -> case sensitive pattern match
-- ilke ->> case sensitive pattern match
-- % means any no. of characters
-- (_)underscore exactly one  character

SELECT name, price
FROM product
WHERE name LIKE 'Casual%';


SELECT name, price
FROM product
WHERE name ILIKE 'casual%';


SELECT name, category, description
FROM product
WHERE name ILIKE '%T-Shirt%' OR  description ILIKE '%T_Shirt%';