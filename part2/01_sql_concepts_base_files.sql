CREATE EXTENSION IF NOT EXISTS pgcrypto;

DROP TABLE IF EXISTS product;

CREATE TABLE product (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL,
    category TEXT NOT NULL,
    price NUMERIC(10,2) NOT NULL CHECK (price >= 0),
    stock INTEGER NOT NULL DEFAULT 0 CHECK (stock >= 0),
    is_active BOOLEAN NOT NULL DEFAULT true,
    sku TEXT UNIQUE,
    description TEXT,
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO product
(name, category, price, stock, is_active, sku, description)
VALUES
('Wireless Mouse', 'Electronics', 3499.00, 18, TRUE, 'ELEC-004', 'Wireless computer mouse'),
('Casual T-Shirt', 'Clothing', 1299.00, 25, TRUE, 'CLTH-002', 'Cotton casual t-shirt'),
('Casual Shoes', 'Footwear', 4599.00, 8, TRUE, 'FTWR-002', 'Leather formal shoes'),
('SQL Guide', 'Books', 799.00, 30, TRUE, 'BOOK-002', 'SQL programming guide'),
('Laptop Stand', 'Accessories', 599.00, 0, FALSE, 'ACCS-002', 'Adjustable laptop stand');

SELECT * FROM product;