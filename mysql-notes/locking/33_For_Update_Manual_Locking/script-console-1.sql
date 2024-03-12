START TRANSACTION;

SELECT * FROM products FOR UPDATE;

UPDATE products
SET quantity = quantity + 2
WHERE id = 'I-000-001';

COMMIT;

SELECT * FROM products WHERE id = 'I-000-001';