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
    CONSTRAINT `price_check` CHECK ((`price` >= 1000))
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;

-- Add Fulltext search feature in existing table Commands:
ALTER TABLE products
    ADD FULLTEXT products_search (name, description);

-- Remove Fulltext search feature in existing table Commands:
ALTER TABLE products
    DROP INDEX products_search;

-- Query Without Fulltext Using "LIKE" keyword:
SELECT *
FROM products
WHERE name LIKE '%ayam%'
   OR description LIKE '%ayam%';

-- Query With Fulltext Using Natural Language Mode Commands:
SELECT *
FROM products
WHERE MATCH(name, description)
            AGAINST('Original' IN NATURAL LANGUAGE MODE);

-- Query With Fulltext Using Boolean Mode Commands:
SELECT *
FROM products
WHERE MATCH(name, description)
            AGAINST('-Original +Mie' IN BOOLEAN MODE);

-- Query With Fulltext Using Query Expansion Mode Commands:
SELECT *
FROM products
WHERE MATCH(name, description)
            AGAINST('Original' WITH QUERY EXPANSION );
