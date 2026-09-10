CREATE TABLE customers (
    cust_id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    region VARCHAR2(20)
)
PARTITION BY HASH (cust_id)
PARTITIONS 4;

SELECT * FROM customers 
PARTITION (SYS_P1);
