-- Update or insert rows
MERGE INTO orders o
USING temp_orders t
ON (o.order_id = t.order_id)
WHEN MATCHED THEN
    UPDATE SET o.quantity = t.quantity, o.order_date = t.order_date
WHEN NOT MATCHED THEN
    INSERT (order_id, customer_id, product_id, quantity, order_date)
    VALUES (t.order_id, t.customer_id, t.product_id, t.quantity, t.order_date);

-- Update or delete rows
MERGE INTO employees e
USING payroll p
ON (e.emp_id = p.emp_id)
WHEN MATCHED THEN
    UPDATE SET e.salary = p.salary
WHEN NOT MATCHED THEN
    DELETE;
