CREATE TABLE products
(
    id          VARCHAR(10)  NOT NULL,
    name        VARCHAR(100) NOT NULL,
    description TEXT,
    price       INT UNSIGNED NOT NULL,
    quantity    INT UNSIGNED NOT NULL DEFAULT 0,
    created_at  TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP
) Engine = InnoDB;

SELECT * FROM products;
-- "SELECT" are keywords for Retrieving information from desired table.
-- "*" are sign for selecting all available column from desired table.
    -- after "SELECT" keywords you can use all available
    -- column name in the created table for queries.

-- "FROM" are keywords for referred table for information to be queries.
-- "products" are variable for example the name of referred table in this case.

SELECT name, price, quantity, created_at FROM products;
-- "name"
-- "price"
-- "quantity"
-- "created_at"
-- are the example referenced columns for the desired retrieved information.
