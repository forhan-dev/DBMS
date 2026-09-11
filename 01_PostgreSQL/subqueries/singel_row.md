### 📘 Oracle SQL – **Single-Row Subquery Example**

A **single-row subquery** returns **exactly one value** (one row, one column). It’s often used in `WHERE`, `HAVING`, or `SELECT` clauses to compare against a single result.

---

## 🔑 Key Features
- Returns **one row** only.  
- Commonly used with comparison operators: `=`, `<`, `>`, `>=`, `<=`.  
- If the subquery returns more than one row, Oracle will throw an error.  

---

## 📘 Example 1: Salary Greater Than Average
```sql
SELECT first_name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);
```
👉 Finds employees earning more than the **average salary**.

---

## 📘 Example 2: Employees in Same Department as a Specific Person
```sql
SELECT first_name, department_id
FROM employees
WHERE department_id = (
    SELECT department_id
    FROM employees
    WHERE first_name = 'John'
);
```
👉 Retrieves employees who work in the **same department as John**.

---

## 📘 Example 3: Orders After Latest Order Date
```sql
SELECT order_id, order_date
FROM orders
WHERE order_date > (
    SELECT MAX(order_date)
    FROM orders
    WHERE customer_id = 101
);
```
👉 Returns orders placed **after the latest order of customer 101**.

---

## 📘 Example 4: Students Above Class Average
```sql
SELECT student_id, name, grade
FROM students s
WHERE grade > (
    SELECT AVG(grade)
    FROM students
    WHERE class = s.class
);
```
👉 Finds students whose grade is **above their class average**.

---

## 📊 Single-Row Subquery Summary

| Use Case | Example | Result |
|----------|---------|--------|
| **Salary vs Average** | `salary > (SELECT AVG(salary))` | Employees earning above average |
| **Same Department** | `dept_id = (SELECT dept_id WHERE name='John')` | Employees in John’s department |
| **Latest Order** | `order_date > (SELECT MAX(order_date))` | Orders after customer’s last order |
| **Above Class Average** | `grade > (SELECT AVG(grade) WHERE class=s.class)` | Students above class average |

---

✅ Single-row subqueries are Oracle SQL’s **precision tool** for comparisons against a single calculated value. 