### 📘 Oracle SQL – **Correlated Subquery Example**

A **correlated subquery** is a subquery that **depends on values from the outer query**. Unlike a regular subquery, it is executed **once for each row** of the outer query, making it dynamic and row-specific.

---

## 🔑 Key Features
- Inner query references columns from the outer query.  
- Evaluated repeatedly for each row of the outer query.  
- Useful for comparisons within groups or related data.  

---

## 📘 Example 1: Employees Above Department Average
```sql
SELECT e.employee_id, e.first_name, e.salary, e.department_id
FROM employees e
WHERE e.salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department_id = e.department_id
);
```
👉 Finds employees whose salary is **greater than the average salary of their own department**.

---

## 📘 Example 2: Students Above Class Average
```sql
SELECT s.student_id, s.name, s.grade, s.class
FROM students s
WHERE s.grade > (
    SELECT AVG(grade)
    FROM students
    WHERE class = s.class
);
```
👉 Retrieves students who scored **above the average grade of their class**.

---

## 📘 Example 3: Orders Later Than Customer’s First Order
```sql
SELECT o.order_id, o.customer_id, o.order_date
FROM orders o
WHERE o.order_date > (
    SELECT MIN(order_date)
    FROM orders
    WHERE customer_id = o.customer_id
);
```
👉 Returns orders placed **after the first order of each customer**.

---

## 📘 Example 4: Employees Whose Salary Exceeds Their Manager’s
```sql
SELECT e.employee_id, e.first_name, e.salary, e.manager_id
FROM employees e
WHERE e.salary > (
    SELECT m.salary
    FROM employees m
    WHERE m.employee_id = e.manager_id
);
```
👉 Finds employees earning **more than their manager**.

---

## 📊 Correlated Subquery Summary

| Use Case | Example | Result |
|----------|---------|--------|
| **Dept Avg Salary** | `salary > (SELECT AVG(salary) WHERE dept_id=e.dept_id)` | Employees above dept average |
| **Class Avg Grade** | `grade > (SELECT AVG(grade) WHERE class=s.class)` | Students above class average |
| **Orders After First** | `order_date > (SELECT MIN(order_date) WHERE cust_id=o.cust_id)` | Orders after customer’s first |
| **Salary vs Manager** | `salary > (SELECT salary WHERE emp_id=e.manager_id)` | Employees earning more than manager |

---

✅ Correlated subqueries are Oracle SQL’s **row-by-row comparison tool**, perfect for evaluating conditions relative to each row’s group or relationship.  