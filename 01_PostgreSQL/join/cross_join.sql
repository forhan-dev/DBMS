SELECT p.product_id, p.product_name, r.region_name
FROM products p
CROSS JOIN regions r;
