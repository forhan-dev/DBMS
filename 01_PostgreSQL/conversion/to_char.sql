SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD') AS today_str
FROM dual;

SELECT TO_CHAR(SYSDATE, 'MM DD, YYYY') AS formatted_date
FROM dual;

SELECT TO_CHAR(12345.678, '99999.99') AS formatted_number
FROM dual;

SELECT TO_CHAR(12345.678, '$99,999.99') AS currency_value
FROM dual;
