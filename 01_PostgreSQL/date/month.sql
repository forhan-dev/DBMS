SELECT hire_date, ADD_MONTHS(hire_date, 6) AS six_months_later
FROM employees;

SELECT ADD_MONTHS(SYSDATE, -3) AS three_months_ago
FROM dual;

SELECT MONTHS_BETWEEN(DATE '2026-09-09', DATE '2026-03-09') AS months_diff
FROM dual;
