
DROP TABLE IF EXISTS basics.products_basic;

CREATE TABLE basics.products_basic(

id SERIAL PRIMARY KEY,

-- STRING ->max length of 100 chars
name VARCHAR(100) NOT NULL,

description TEXT,

stock INTEGER DEFAULT 0,

-- store larger whole nuber than INTEGER
toatal_views BIGINT DEFAULT 0,

-- EXACT DECIMAL VALUES
-- 10 MEANS TOTAL DIGITS 
-- 2 means digit after the decmal point , 99999999.99
price NUMERIC(10,2),

is_active BOOLEAN DEFAULT true


);

-- quires

INSERT INTO basics.products_basic
    (name, description , stock,toatal_views,price, is_active)
    VALUES(
        'product 1',
        'product desc',
        100,
        1200,
        13445644.65,
        true
    ),
        (
        'product 2',
        'product desc',
        150,
        1680,
        43545644.65,
        false
    );

    SELECT * FROM basics.products_basic;

    SELECT id, name , price, is_active FROM  basics.products_basic WHERE is_active;