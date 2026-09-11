### 📘 Oracle SQL – **Parentheses in Operator Precedence**

In Oracle SQL, **parentheses `()`** are used to **explicitly control the order of evaluation** in complex expressions. Since Oracle follows strict operator precedence rules, parentheses help avoid ambiguity and ensure the query produces the intended results.

---

## 🔑 Why Use Parentheses?
- Override default precedence (e.g., force `OR` before `AND`).  
- Make queries easier to read and maintain.  
- Prevent logical errors in filtering conditions.  

---

## 📘 Example 1: Arithmetic Override
```sql
SELECT (1 + 2) * 3 AS result
FROM dual;
```
👉 Without parentheses: `1 + 2 * 3 = 7`  
👉 With parentheses: `(1 + 2) * 3 = 9`

---

## 📘 Example 2: Logical Override (AND vs OR)
```sql
SELECT *
FROM employees
WHERE (department_id = 10 OR department_id = 20)
  AND salary > 3000;
```
👉 Ensures Oracle evaluates the OR condition first, then applies AND with salary.

---

## 📘 Example 3: NOT with Complex Condition
```sql
SELECT *
FROM students
WHERE NOT (grade BETWEEN 50 AND 80 OR attendance < 75);
```
👉 Excludes students who are either in the 50–80 grade range **or** have attendance below 75.

---

## 📘 Example 4: Combined Arithmetic + Comparison
```sql
SELECT *
FROM employees
WHERE (salary + bonus) * 2 >= 10000;
```
👉 Forces Oracle to add salary and bonus first, then multiply by 2 before comparison.

---

## 📊 Parentheses Usage Summary

| Use Case | Example | Result |
|----------|---------|--------|
| **Arithmetic Override** | `(1+2)*3` | Forces addition before multiplication |
| **Logical Override** | `(dept_id=10 OR dept_id=20) AND salary>3000` | OR evaluated before AND |
| **NOT with Group** | `NOT (grade BETWEEN 50 AND 80 OR attendance<75)` | Negates grouped condition |
| **Arithmetic + Comparison** | `(salary+bonus)*2 >= 10000` | Adds first, then multiplies |

---

✅ Parentheses are Oracle SQL’s **safety net** for complex queries—ensuring clarity and correctness when mixing arithmetic, comparison, and logical operators.  