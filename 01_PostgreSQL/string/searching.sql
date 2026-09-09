SELECT INSTR(last_name, 'a') AS pos_char
FROM employees;

SELECT INSTR(last_name, 'base') AS pos_sub
FROM employees;

SELECT INSTR(first_name, 'a', 1, 2) AS 2nd_occur
FROM employees;
