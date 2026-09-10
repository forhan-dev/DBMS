SELECT employee_id, NVL(commission_pct, 0) AS commission
FROM employees;

SELECT employee_id, NVL(phone_number, 'No Phone') AS contact_number
FROM employees;

SELECT employee_id, salary,
       NVL(commission_pct, 0) * salary AS commission_amount
FROM employees;
