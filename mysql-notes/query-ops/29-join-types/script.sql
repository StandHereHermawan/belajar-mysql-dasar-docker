INSERT INTO categories (id, name)
VALUES ('A-000-004', 'Pelengkap Makanan'),
       ('A-000-005', 'Makanan Spesial'),
       ('A-000-006', 'Minuman Spesial');

SELECT * FROM categories;

INSERT INTO products(id, name, description, price, quantity)
VALUES  ('Z-000-001', 'Teh Anget', 'Teh Anget Tawar', 3000, 20),
        ('Z-000-002', 'Teh Anget', 'Teh Anget Manis', 3500, 20);

SELECT * FROM categories
JOIN products ON (products.id_category = categories.id);

SELECT * FROM categories
INNER JOIN products ON (products.id_category = categories.id);

SELECT * FROM categories
LEFT JOIN products ON (products.id_category = categories.id);

SELECT * FROM categories
RIGHT JOIN products ON (products.id_category = categories.id);

SELECT * FROM categories
CROSS JOIN products;

CREATE TABLE number
(
    id INT NOT NULL,
    PRIMARY KEY  (id)
) ENGINE = InnoDB;

INSERT INTO number(id) VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10);

SELECT number1.id AS 'number domain',
       number2.id AS 'number co domain',
       (number1.id * number2.id) AS 'multiplication result'
FROM number AS number1
       CROSS JOIN number AS number2
ORDER BY number1.id, number2.id;