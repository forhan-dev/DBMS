### 📘 Oracle SQL – **INTERSECT Operator**

The **`INTERSECT` operator** in Oracle SQL is used to return **rows that are common to two queries**. It performs a set operation, meaning it compares complete result sets, and only outputs rows that appear in **both queries**.

---

## 🔑 Key Features
- Returns only **common rows** between queries.  
- Automatically removes duplicates.  
- Queries must have the **same number of columns** and **compatible data types**.  

---

## 📘 Example 1: Employee IDs Who Are Also Managers
```sql
SELECT employee_id AS id
FROM employees
INTERSECT
SELECT manager_id AS id
FROM departments;
```
👉 Finds IDs that exist in both employees and managers.

---

## 📘 Example 2: Customers in Dhaka AND Sylhet
```sql
SELECT customer_id, name, city
FROM customers
WHERE city = 'Dhaka'
INTERSECT
SELECT customer_id, name, city
FROM customers
WHERE city = 'Sylhet';
```
👉 Retrieves customers who are listed in both Dhaka and Sylhet datasets.

---

## 📘 Example 3: Orders in Both 2025 AND 2026
```sql
SELECT order_id, order_date
FROM orders
WHERE EXTRACT(YEAR FROM order_date) = 2025
INTERSECT
SELECT order_id, order_date
FROM orders
WHERE EXTRACT(YEAR FROM order_date) = 2026;
```
👉 Returns orders that appear in both 2025 and 2026 queries (if overlapping records exist).

---

## 📘 Example 4: Students With Grade ≥ 80 AND Attendance ≥ 90
```sql
SELECT student_id, name, grade, attendance
FROM students
WHERE grade >= 80
INTERSECT
SELECT student_id, name, grade, attendance
FROM students
WHERE attendance >= 90;
```
👉 Finds students who meet **both** conditions: grade ≥ 80 and attendance ≥ 90%.

---

## 📊 INTERSECT Operator Summary

| Use Case | Example | Result |
|----------|---------|--------|
| **Employee + Manager IDs** | `employee_id INTERSECT manager_id` | IDs common to employees and managers |
| **Customers in Cities** | `city='Dhaka' INTERSECT city='Sylhet'` | Customers in both cities |
| **Orders by Year** | `year=2025 INTERSECT year=2026` | Orders appearing in both years |
| **Students by Grade/Attendance** | `grade>=80 INTERSECT attendance>=90` | Students meeting both conditions |

---

✅ The **INTERSECT operator** is Oracle SQL’s way of finding **common ground between queries**—perfect for identifying overlapping records across employees, customers, orders, or students.