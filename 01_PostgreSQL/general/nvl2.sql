SELECT employee_id, commission_pct,
       NVL2(commission_pct, 'Has Commission', 'No Commission') AS commission_status
FROM employees;

SELECT employee_id, phone_number,
       NVL2(phone_number, phone_number, 'No Phone') AS contact_info
FROM employees;

SELECT employee_id, salary, commission_pct,
       NVL2(commission_pct, salary * commission_pct, salary * 0.05) AS commission_amount
FROM employees;
