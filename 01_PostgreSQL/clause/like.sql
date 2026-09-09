SELECT name
FROM customers
WHERE name LIKE 'A%';

SELECT name
FROM customers
WHERE name LIKE '%n';

SELECT name
FROM customers
WHERE name LIKE '%ah%';

SELECT name
FROM customers
WHERE name LIKE '_a%';

SELECT name
FROM customers
WHERE name NOT LIKE 'A%';
