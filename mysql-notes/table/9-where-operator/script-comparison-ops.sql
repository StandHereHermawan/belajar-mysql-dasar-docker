CREATE TABLE products
(
    id          VARCHAR(10)  NOT NULL,
    name        VARCHAR(100) NOT NULL,
    description TEXT,
    category    ENUM ('Makanan', 'Minuman','Lain-Lain'),
    price       INT UNSIGNED NOT NULL,
    quantity    INT UNSIGNED NOT NULL DEFAULT 0,
    created_at  TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
) Engine = InnoDB;

SELECT products.id,
       products.name,
       products.price,
       products.quantity
FROM products
WHERE quantity = 20;
-- "=" equal ops.

SELECT products.id,
       products.name,
       products.price,
       products.quantity
FROM products
WHERE quantity > 10;
-- ">" was bigger than ops.

SELECT products.id,
       products.name,
       products.price,
       products.quantity
FROM products
WHERE quantity >= 20;
-- ">=" was equals and bigger than ops.

SELECT products.id,
       products.name,
       products.price,
       products.quantity
FROM products
WHERE quantity != 20;
-- "!=" was negation ops.

SELECT products.id,
       products.name,
       products.price,
       products.quantity
FROM products
WHERE quantity <> 20;
-- "<>" was also negation ops.

SELECT products.id,
       products.name,
       products.price,
       products.quantity
FROM products
WHERE quantity < 20;
-- "<" was lower than ops.

SELECT products.id,
       products.name,
       products.price,
       products.quantity
FROM products
WHERE quantity <= 20;
-- "<" was equal and lower than ops.

