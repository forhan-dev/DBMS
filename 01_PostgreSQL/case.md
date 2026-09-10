### 📘 Oracle SQL – **CASE in ORDER BY Example**

Using **`CASE` in the `ORDER BY` clause** lets you define **custom sorting logic** instead of relying on raw column values. This is powerful when you want to prioritize rows based on conditions.

---

## 🔑 Example 1: Salary Priority Sorting
```sql
SELECT employee_id, salary
FROM employees
ORDER BY CASE 
            WHEN salary > 10000 THEN 1
            WHEN salary BETWEEN 5000 AND 10000 THEN 2
            ELSE 3
         END;
```
👉 Employees with **High salaries** appear first, then **Medium**, then **Low**.

---

## 📘 Example 2: Custom Department Order
```sql
SELECT department_id, employee_id, salary
FROM employees
ORDER BY CASE department_id
            WHEN 10 THEN 1   -- HR first
            WHEN 20 THEN 2   -- Sales second
            WHEN 30 THEN 3   -- IT third
            ELSE 4           -- Others last
         END;
```
👉 Departments are sorted in a **custom sequence** instead of numeric order.

---

## 📘 Example 3: Sorting by Status
```sql
SELECT order_id, status
FROM orders
ORDER BY CASE status
            WHEN 'URGENT' THEN 1
            WHEN 'PENDING' THEN 2
            WHEN 'COMPLETED' THEN 3
            ELSE 4
         END;
```
👉 Orders are sorted by **business priority** (urgent first).

---

## 📊 CASE in ORDER BY Summary

| Use Case | Purpose | Example |
|----------|---------|---------|
| **Salary Priority** | Sort by salary bands | `CASE WHEN salary>10000 THEN 1 ...` |
| **Department Order** | Custom dept sequence | `CASE dept_id WHEN 10 THEN 1 ...` |
| **Status Sorting** | Business priority | `CASE status WHEN 'URGENT' THEN 1 ...` |

---

✅ The `CASE` in `ORDER BY` is perfect for **custom ranking, business rules, and non-standard sorting** where raw values don’t reflect desired order.