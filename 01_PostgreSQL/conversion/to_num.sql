SELECT TO_NUMBER('12345') AS num_value
FROM dual;

SELECT TO_NUMBER('12345.67') AS num_value
FROM dual;

SELECT TO_NUMBER('$12,345.67', 'L99,999.99') AS currency_value
FROM dual;

SELECT BIN_TO_NUM(1,0,1,1) AS binary_number
FROM dual;
