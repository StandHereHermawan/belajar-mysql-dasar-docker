CREATE TABLE `products`
(
    `id`          varchar(10) COLLATE utf8mb4_unicode_ci  NOT NULL,
    `name`        varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
    `category`    enum ('Makanan','Minuman','Lain-Lain') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `description` text COLLATE utf8mb4_unicode_ci,
    `price`       int unsigned                            NOT NULL,
    `quantity`    int unsigned                            NOT NULL                  DEFAULT '0',
    `created_at`  timestamp                               NOT NULL                  DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    FULLTEXT KEY `products_search` (`name`, `description`),
    CONSTRAINT `price_check` CHECK ((`price` >= 1000))
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;

ALTER TABLE products
    DROP COLUMN category;

CREATE TABLE categories
(
    id   VARCHAR(10)  NOT NULL,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

ALTER TABLE products
    ADD COLUMN id_category VARCHAR(10);

ALTER TABLE products
    ADD CONSTRAINT fk_products_categories
        FOREIGN KEY (id_category) REFERENCES categories (id);

SHOW CREATE TABLE products;

INSERT INTO categories (id, name)
VALUES ('A-000-001', 'Makanan'),
       ('A-000-002', 'Minuman'),
       ('A-000-003', 'Lain-Lain');

SELECT *
FROM categories;

UPDATE products
SET products.id_category = 'A-000-001'
WHERE price > 10000;

UPDATE products
SET products.id_category = 'A-000-002'
WHERE id LIKE '%Q%';

UPDATE products
SET products.id_category = 'A-000-003'
WHERE id LIKE '%R%';

SELECT products.id,
       products.name,
       categories.name
FROM products
         JOIN categories ON (categories.id = products.id_category);