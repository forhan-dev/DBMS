### 📘 Oracle SQL – **Subqueries**

A **subquery** (also called an **inner query** or **nested query**) is a query inside another SQL statement. It allows you to use the result of one query as input to another. Subqueries are powerful for filtering, comparing, and transforming data.

---

## 🔑 Key Features
- Can be placed in `SELECT`, `FROM`, `WHERE`, or `HAVING` clauses.  
- Must be enclosed in parentheses `()`.  
- Can return a **single value**, a **list of values**, or a **table**.  
- Often used with operators like `IN`, `EXISTS`, `ANY`, `ALL`.  

---

## 📘 Example 1: Subquery in WHERE Clause
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

## 📘 Example 2: Subquery with IN
```sql
SELECT first_name, department_id
FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM departments
    WHERE location_id = 1700
);
```
👉 Retrieves employees working in departments located at site 1700.

---

## 📘 Example 3: Subquery in FROM Clause (Inline View)
```sql
SELECT department_id, AVG(salary) AS avg_salary
FROM (
    SELECT department_id, salary
    FROM employees
) sub
GROUP BY department_id;
```
👉 Uses a subquery as a **temporary table** to calculate average salary per department.

---

## 📘 Example 4: Correlated Subquery
```sql
SELECT first_name, salary
FROM employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department_id = e.department_id
);
```
👉 Compares each employee’s salary against the **average salary of their own department**.

---

## 📘 Example 5: EXISTS Subquery
```sql
SELECT first_name, department_id
FROM employees e
WHERE EXISTS (
    SELECT 1
    FROM departments d
    WHERE d.department_id = e.department_id
      AND d.manager_id IS NOT NULL
);
```
👉 Returns employees only if their department has a manager assigned.

---

## 📊 Subquery Types Summary

| Type | Example | Purpose |
|------|---------|---------|
| **Single-row** | `salary > (SELECT AVG(salary)...)` | Returns one value |
| **Multi-row** | `dept_id IN (SELECT dept_id...)` | Returns multiple values |
| **Inline View** | `FROM (SELECT ...) sub` | Treats subquery as a table |
| **Correlated** | `salary > (SELECT AVG(salary) WHERE dept_id=e.dept_id)` | Depends on outer query |
| **EXISTS** | `WHERE EXISTS (SELECT ...)` | Checks existence of rows |

---

✅ Subqueries are Oracle SQL’s **data refinement tool**, enabling comparisons, filtering, and dynamic calculations across multiple tables.  