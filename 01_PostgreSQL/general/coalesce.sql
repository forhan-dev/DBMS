SELECT employee_id,
       COALESCE(phone_number, email, 'No Contact') AS contact_info
FROM employees;

SELECT employee_id,
       COALESCE(bonus, commission_pct * salary, 0) AS adjusted_income
FROM employees;
