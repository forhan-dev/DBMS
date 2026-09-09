-- Transaction specific temporary table
CREATE GLOBAL TEMPORARY TABLE temp_orders (
    order_id NUMBER,
    product_name VARCHAR2(50)
) ON COMMIT DELETE ROWS;

-- Session specific temporary table
CREATE GLOBAL TEMPORARY TABLE temp_customers (
    customer_id NUMBER,
    name VARCHAR2(50)
) ON COMMIT PRESERVE ROWS;
