-- Allows only committed data to be read, preventing dirty reads
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

UPDATE products
SET price = price + 20
WHERE category = 'Electronics';

COMMIT;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

UPDATE products
SET price = price + 20
WHERE category = 'Electronics';

COMMIT;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

DELETE FROM orders
WHERE order_date < DATE '2025-01-01';

COMMIT;
