### 📘 Oracle SQL – **Inline View Example**

An **inline view** is a **subquery in the `FROM` clause** that acts like a temporary table. It’s useful when you want to simplify complex queries, apply aggregation, or filter results before joining with other tables.

---

## 🔑 Key Features
- Defined inside `FROM (...)`.  
- Treated as a virtual table for the outer query.  
- Can include joins, aggregations, or filters.  
- Often used to break down complex queries into manageable steps.  

---

## 📘 Example 1: Average Salary by Department
```sql
SELECT department_id, avg_salary
FROM (
    SELECT department_id, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
) dept_avg
WHERE avg_salary > 5000;
```
👉 The subquery calculates average salary per department.  
👉 The outer query filters departments with average salary above 5000.

---

## 📘 Example 2: Top 5 Highest Paid Employees
```sql
SELECT *
FROM (
    SELECT employee_id, first_name, salary
    FROM employees
    ORDER BY salary DESC
) top_salaries
WHERE ROWNUM <= 5;
```
👉 The inline view sorts employees by salary.  
👉 The outer query picks the top 5.

---

## 📘 Example 3: Orders with Customer Info
```sql
SELECT o.order_id, o.order_date, c.name
FROM (
    SELECT order_id, customer_id, order_date
    FROM orders
    WHERE order_date >= DATE '2026-01-01'
) o
JOIN customers c ON o.customer_id = c.customer_id;
```
👉 The inline view filters orders from 2026.  
👉 The outer query joins with customers to show names.

---

## 📘 Example 4: Students Above Class Average
```sql
SELECT s.student_id, s.name, s.grade
FROM students s
JOIN (
    SELECT class, AVG(grade) AS avg_grade
    FROM students
    GROUP BY class
) class_avg
ON s.class = class_avg.class
WHERE s.grade > class_avg.avg_grade;
```
👉 The inline view calculates average grade per class.  
👉 The outer query finds students above their class average.

---

## 📊 Inline View Summary

| Use Case | Example | Result |
|----------|---------|--------|
| **Department Avg Salary** | `FROM (SELECT dept_id, AVG(salary)...)` | Departments with avg salary > 5000 |
| **Top Salaries** | `FROM (SELECT ... ORDER BY salary)` | Top 5 highest paid employees |
| **Orders + Customers** | `FROM (SELECT order_id, cust_id...) o JOIN customers` | Orders with customer names |
| **Students Above Avg** | `JOIN (SELECT class, AVG(grade)...)` | Students above class average |

---

✅ Inline views are Oracle SQL’s **temporary tables inside queries**, perfect for breaking down complex logic into smaller, reusable parts.  