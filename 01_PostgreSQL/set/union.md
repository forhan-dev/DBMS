### 📘 Oracle SQL – **UNION Operator**

The **`UNION` operator** in Oracle SQL is used to **combine the results of two or more queries** into a single result set. It automatically **removes duplicate rows**, returning only distinct values.

---

## 🔑 Key Features
- Combines multiple query results.  
- Removes duplicates (use `UNION ALL` to keep them).  
- Queries must have the **same number of columns** and **compatible data types**.  

---

## 📘 Example 1: Employee IDs and Manager IDs
```sql
SELECT employee_id AS id
FROM employees
UNION
SELECT manager_id AS id
FROM departments;
```
👉 Returns all unique IDs from employees and managers.

---

## 📘 Example 2: Customers from Dhaka and Sylhet
```sql
SELECT customer_id, name, city
FROM customers
WHERE city = 'Dhaka'
UNION
SELECT customer_id, name, city
FROM customers
WHERE city = 'Sylhet';
```
👉 Retrieves customers from Dhaka or Sylhet, without duplicates.

---

## 📘 Example 3: Orders in 2025 and 2026
```sql
SELECT order_id, order_date
FROM orders
WHERE EXTRACT(YEAR FROM order_date) = 2025
UNION
SELECT order_id, order_date
FROM orders
WHERE EXTRACT(YEAR FROM order_date) = 2026;
```
👉 Returns all unique orders placed in 2025 or 2026.

---

## 📘 Example 4: Students with Grade ≥ 80 OR Attendance ≥ 90
```sql
SELECT student_id, name, grade, attendance
FROM students
WHERE grade >= 80
UNION
SELECT student_id, name, grade, attendance
FROM students
WHERE attendance >= 90;
```
👉 Finds students who scored at least 80 or attended 90%+ classes, ensuring no duplicates.

---

## 📊 UNION Operator Summary

| Use Case | Example | Result |
|----------|---------|--------|
| **Employee + Manager IDs** | `SELECT employee_id ... UNION SELECT manager_id ...` | Unique IDs from both tables |
| **Customers by City** | `WHERE city='Dhaka' UNION WHERE city='Sylhet'` | Customers from Dhaka or Sylhet |
| **Orders by Year** | `WHERE year=2025 UNION WHERE year=2026` | Orders in 2025 or 2026 |
| **Students by Grade/Attendance** | `grade>=80 UNION attendance>=90` | High-performing students |

---

✅ The **UNION operator** is Oracle SQL’s way of merging multiple queries into one clean, distinct result set—perfect for combining IDs, cities, years, or performance records.