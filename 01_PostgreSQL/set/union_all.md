### 📘 Oracle SQL – **UNION ALL Operator**

The **`UNION ALL` operator** in Oracle SQL is used to **combine results of two or more queries** into a single result set, but unlike `UNION`, it **does not remove duplicates**. This makes it faster and useful when you want to keep all occurrences.

---

## 🔑 Key Features
- Combines multiple query results.  
- Keeps duplicates (no distinct filtering).  
- Queries must have the **same number of columns** and **compatible data types**.  

---

## 📘 Example 1: Employee IDs and Manager IDs (Including Duplicates)
```sql
SELECT employee_id AS id
FROM employees
UNION ALL
SELECT manager_id AS id
FROM departments;
```
👉 Returns all employee IDs and manager IDs, including duplicates.

---

## 📘 Example 2: Customers from Dhaka and Sylhet (Duplicates Allowed)
```sql
SELECT customer_id, name, city
FROM customers
WHERE city = 'Dhaka'
UNION ALL
SELECT customer_id, name, city
FROM customers
WHERE city = 'Sylhet';
```
👉 Retrieves customers from Dhaka and Sylhet, keeping duplicates if they exist in both queries.

---

## 📘 Example 3: Orders in 2025 and 2026 (Duplicates Allowed)
```sql
SELECT order_id, order_date
FROM orders
WHERE EXTRACT(YEAR FROM order_date) = 2025
UNION ALL
SELECT order_id, order_date
FROM orders
WHERE EXTRACT(YEAR FROM order_date) = 2026;
```
👉 Returns all orders from 2025 and 2026, including duplicates if an order appears in both sets.

---

## 📘 Example 4: Students with Grade ≥ 80 OR Attendance ≥ 90 (Duplicates Allowed)
```sql
SELECT student_id, name, grade, attendance
FROM students
WHERE grade >= 80
UNION ALL
SELECT student_id, name, grade, attendance
FROM students
WHERE attendance >= 90;
```
👉 Finds students who scored at least 80 or attended 90%+ classes, keeping duplicates if they satisfy both conditions.

---

## 📊 UNION ALL Operator Summary

| Use Case | Example | Result |
|----------|---------|--------|
| **Employee + Manager IDs** | `employee_id UNION ALL manager_id` | All IDs, including duplicates |
| **Customers by City** | `city='Dhaka' UNION ALL city='Sylhet'` | Customers from Dhaka & Sylhet (duplicates kept) |
| **Orders by Year** | `year=2025 UNION ALL year=2026` | Orders in 2025 & 2026 (duplicates kept) |
| **Students by Grade/Attendance** | `grade>=80 UNION ALL attendance>=90` | Students meeting either condition, duplicates kept |

---

✅ The **UNION ALL operator** is Oracle SQL’s way of merging queries while preserving duplicates—ideal when you need raw combined data without filtering.  