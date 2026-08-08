INSERT INTO product (name, category, price, stock, is_active, sku, description)
VALUES ('temp pd to be deleted ','Electronics',345.64,45,false,'ELEC-TEMP-0128','TEMP PD DESC');

DELETE FROM product WHERE sku = 'ELEC-TEMP-0128';
SELECT name , category, sku
FROM product
WHERE sku = 'ELEC-TEMP-0128';


SELECT * FROM product;

