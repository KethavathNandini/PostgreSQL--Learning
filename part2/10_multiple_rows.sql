SELECT name , category, price , is_active
FROM product
WHERE category = 'Clothing';

UPDATE product
SET price = ROUND(price *1.10,1)
WHERE category='Clothing';


SELECT name, price, category
FROM product
WHERE category = 'Clothing';