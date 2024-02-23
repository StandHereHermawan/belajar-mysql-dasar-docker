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

CREATE TABLE `wishlist`
(
    `id`          int                                    NOT NULL AUTO_INCREMENT,
    `id_product`  varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
    `description` text COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`),
    KEY `fk_wishlist_product` (`id_product`),
    CONSTRAINT `fk_wishlist_product` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB
  AUTO_INCREMENT = 6
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;

CREATE TABLE `customers`
(
    `id`         int                                     NOT NULL AUTO_INCREMENT,
    `email`      varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
    `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
    `last_name`  varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `email_unique` (`email`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 4
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;

ALTER TABLE wishlist
    ADD COLUMN id_customer INT;

ALTER TABLE wishlist
    ADD CONSTRAINT fk_wishlist_customer FOREIGN KEY (id_customer)
        REFERENCES customers (id)
        ON UPDATE CASCADE
        ON DELETE CASCADE;

ALTER TABLE wishlist
    DROP CONSTRAINT fk_wishlist_customer;

SELECT *
FROM wishlist
         JOIN products on (wishlist.id_product = products.id);

SELECT products.id, products.name, wishlist.description
FROM wishlist
         JOIN products ON (wishlist.id_product = products.id);

SELECT P.id          AS 'Kode Produk',
       P.name        AS 'Nama Produk',
       P.price       AS 'Harga Produk',
       W.description AS 'Keterangan Wishlist'
FROM wishlist AS W
         JOIN products AS P ON (W.id_product = P.id);

SELECT customers.first_name,
       customers.last_name,
       customers.email,
       products.id,
       products.price,
       products.description,
       wishlist.description
FROM wishlist
         JOIN products ON (products.id = wishlist.id_product)
         JOIN customers ON (customers.id = wishlist.id_customer);