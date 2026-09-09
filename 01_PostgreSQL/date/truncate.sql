SELECT TRUNC(SYSDATE) AS today_midnight
FROM dual;

SELECT TRUNC(SYSDATE, 'MONTH') AS first_day_of_month
FROM dual;

SELECT TRUNC(SYSDATE, 'YEAR') AS first_day_of_year
FROM dual;
