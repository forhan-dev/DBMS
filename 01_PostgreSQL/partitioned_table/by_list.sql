CREATE TABLE sales (
    sale_id NUMBER PRIMARY KEY,
    region VARCHAR2(20),
    amount NUMBER
)
PARTITION BY LIST (region) (
    PARTITION east VALUES ('East'),
    PARTITION west VALUES ('West'),
    PARTITION misc VALUES (DEFAULT)
);

-- Query only East partition
SELECT * FROM sales 
PARTITION (east);