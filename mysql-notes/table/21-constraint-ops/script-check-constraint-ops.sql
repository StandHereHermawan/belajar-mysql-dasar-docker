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
    CONSTRAINT price_check CHECK ( price >= 1000 )
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;

ALTER TABLE products
    DROP CONSTRAINT price_check;

ALTER TABLE products
    ADD CONSTRAINT price_check CHECK ( price >= 1000 );