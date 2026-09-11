### 📘 Oracle SQL – **MINUS Operator**

The **`MINUS` operator** in Oracle SQL is used to return rows from the **first query** that are **not present in the second query**. It’s essentially a **set difference** operation.

---

## 🔑 Key Features
- Compares two result sets.  
- Returns rows unique to the first query.  
- Automatically removes duplicates.  
- Queries must have the **same number of columns** and **compatible data types**.  

---

## 📘 Example 1: Employees Who Are Not Managers
```sql
SELECT employee_id AS id
FROM employees
MINUS
SELECT manager_id AS id
FROM departments;
```
👉 Retrieves employee IDs that do **not** appear as manager IDs.

---

## 📘 Example 2: Customers in Dhaka But Not in Sylhet
```sql
SELECT customer_id, name, city
FROM customers
WHERE city = 'Dhaka'
MINUS
SELECT customer_id, name, city
FROM customers
WHERE city = 'Sylhet';
```
👉 Returns customers from Dhaka who are **not** listed in Sylhet.

---

## 📘 Example 3: Orders in 2025 But Not in 2026
```sql
SELECT order_id, order_date
FROM orders
WHERE EXTRACT(YEAR FROM order_date) = 2025
MINUS
SELECT order_id, order_date
FROM orders
WHERE EXTRACT(YEAR FROM order_date) = 2026;
```
👉 Finds orders placed in 2025 that do **not** appear in 2026.

---

## 📘 Example 4: Students With Grade ≥ 80 But Not Attendance ≥ 90
```sql
SELECT student_id, name, grade, attendance
FROM students
WHERE grade >= 80
MINUS
SELECT student_id, name, grade, attendance
FROM students
WHERE attendance >= 90;
```
👉 Retrieves students who scored at least 80 but did **not** attend 90%+ classes.

---

## 📊 MINUS Operator Summary

| Use Case | Example | Result |
|----------|---------|--------|
| **Employees Not Managers** | `employee_id MINUS manager_id` | Employees who are not managers |
| **Dhaka Not Sylhet** | `city='Dhaka' MINUS city='Sylhet'` | Customers only in Dhaka |
| **Orders 2025 Not 2026** | `year=2025 MINUS year=2026` | Orders unique to 2025 |
| **Grade Not Attendance** | `grade>=80 MINUS attendance>=90` | Students with high grades but low attendance |

---

✅ The **MINUS operator** is Oracle SQL’s way of finding **differences between queries**—perfect for identifying employees who aren’t managers, customers unique to one city, or records exclusive to a certain year.