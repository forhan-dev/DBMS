-- Behave as if it were executed alone
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

UPDATE products
SET price = price + 50
WHERE category = 'Electronics';

COMMIT;
