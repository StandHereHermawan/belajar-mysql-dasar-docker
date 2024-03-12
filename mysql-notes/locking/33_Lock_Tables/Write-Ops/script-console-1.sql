LOCK TABLES products WRITE;

UPDATE products
SET quantity = quantity - 2
WHERE id = 'I-000-001';

UNLOCK TABLES;