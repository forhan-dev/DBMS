### 📘 Oracle SQL – **Multi-Row Subquery Examples**

A **multi-row subquery** returns **multiple rows** of results. These are typically used with operators like `IN`, `ANY`, `ALL`, or `EXISTS` to handle lists of values instead of a single value.

---

## 🔑 Key Features
- Returns **multiple rows**.  
- Must be paired with multi-row operators (`IN`, `ANY`, `ALL`, `EXISTS`).  
- Useful for filtering against sets of values.  

---

## 📘 Example 1: Employees in Departments Located at Site 1700
```sql
SELECT first_name, department_id
FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM departments
    WHERE location_id = 1700
);
```
👉 Finds employees working in departments located at site 1700.

---

## 📘 Example 2: Employees with Salary Greater Than Any Manager
```sql
SELECT first_name, salary
FROM employees
WHERE salary > ANY (
    SELECT salary
    FROM employees
    WHERE job_id = 'MANAGER'
);
```
👉 Retrieves employees whose salary is greater than **at least one manager’s salary**.

---

## 📘 Example 3: Employees with Salary Greater Than All Managers
```sql
SELECT first_name, salary
FROM employees
WHERE salary > ALL (
    SELECT salary
    FROM employees
    WHERE job_id = 'MANAGER'
);
```
👉 Finds employees earning more than **every manager**.

---

## 📘 Example 4: Customers with Orders
```sql
SELECT customer_id, name
FROM customers c
WHERE EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.customer_id = c.customer_id
);
```
👉 Returns customers who have placed at least one order.

---

## 📘 Example 5: Students in Classes With Average Grade Above 70
```sql
SELECT student_id, name, class
FROM students
WHERE class IN (
    SELECT class
    FROM students
    GROUP BY class
    HAVING AVG(grade) > 70
);
```
👉 Retrieves students from classes where the **average grade is above 70**.

---

## 📊 Multi-Row Subquery Summary

| Use Case | Example | Result |
|----------|---------|--------|
| **IN Operator** | `dept_id IN (SELECT dept_id...)` | Employees in listed departments |
| **ANY Operator** | `salary > ANY (SELECT salary...)` | Salary greater than at least one manager |
| **ALL Operator** | `salary > ALL (SELECT salary...)` | Salary greater than all managers |
| **EXISTS Operator** | `WHERE EXISTS (SELECT...)` | Customers with orders |
| **HAVING with IN** | `class IN (SELECT class HAVING AVG(grade)>70)` | Students in high-performing classes |

---

✅ Multi-row subqueries are Oracle SQL’s **set-based filtering tool**, perfect for comparing against lists, checking existence, or applying conditions across groups.  