--Only queries allowed
SET TRANSACTION READ ONLY;

SELECT order_id, customer_id, order_date
FROM orders
WHERE order_date > DATE '2026-01-01';

COMMIT;