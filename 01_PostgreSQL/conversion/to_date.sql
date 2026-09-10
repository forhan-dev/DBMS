SELECT TO_DATE('2026-09-09', 'YYYY-MM-DD') AS converted_date
FROM dual;

SELECT TO_DATE('09-SEP-2026', 'DD-MM-YYYY') AS converted_date
FROM dual;

SELECT TO_DATE('09/09/2026', 'MM/DD/YYYY') AS converted_date
FROM dual;

SELECT TO_DATE('09-09-2026 14:30:00', 'DD-MM-YYYY HH24:MI:SS') AS converted_datetime
FROM dual;

SELECT TO_DATE('09/09/2026 02:30:00 PM', 'MM/DD/YYYY HH:MI:SS AM') AS converted_datetime
FROM dual;
