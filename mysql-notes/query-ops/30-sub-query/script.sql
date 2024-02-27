SELECT AVG(price) FROM products;

SELECT *
FROM products
    WHERE price > 13794.1176;

SELECT *
FROM products
    WHERE price > (SELECT AVG(price) FROM products);
-- Where Sub queries

INSERT INTO products (id, name, description, price, quantity)
VALUES ('I-000-001', 'Iphone 15', 'Iphone 15 Produk Apple', 14000000,2);

SELECT MAX(cp.price)
FROM (SELECT price FROM categories
JOIN products ON (products.id_category = categories.id)) AS cp;
-- FROM Sub queries