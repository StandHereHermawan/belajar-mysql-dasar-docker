ALTER TABLE products
ADD COLUMN sample VARCHAR(100);

ALTER TABLE products 
DROP COLUMN sample;

SELECT * FROM products;

UPDATE products
SET id_category = 'A-000-002'
WHERE id= 'Z-000-001';

UPDATE products
SET id_category = 'A-000-002'
WHERE id= 'Z-000-002';

UPDATE products
SET id_category = 'A-000-003'
WHERE id= 'I-000-001';