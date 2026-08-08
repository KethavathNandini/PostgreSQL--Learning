SELECT name , price , stock, sku
FROM product
WHERE sku = 'FTWR-002';


UPDATE product 
SET price = 1990.02,
    stock = 4
WHERE sku = 'FTWR-002';

SELECT name , price , stock, sku
FROM product
WHERE sku = 'FTWR-002';
