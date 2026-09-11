### 📘 Oracle SQL – **Unary Minus Operator (-)**

The **unary minus (`-`)** operator in Oracle SQL is used to **negate a numeric value**, effectively converting it into its negative counterpart. It’s a simple but powerful operator, especially when working with mathematical expressions or financial calculations.

---

## 🔑 Key Features
- Works with **numeric data types** (`NUMBER`, `FLOAT`, etc.).  
- Converts positive values to negative, and negative values to positive.  
- Often used in expressions to adjust signs or represent deductions.  

---

## 📘 Example 1: Simple Unary Minus
```sql
SELECT -10 AS negative_value FROM dual;
-- Result: -10
```
👉 Explicitly represents a negative constant.

---

## 📘 Example 2: Unary Minus with Columns
```sql
SELECT -salary AS inverted_salary
FROM employees;
```
👉 Negates the salary value, useful for representing deductions or losses.

---

## 📘 Example 3: Combined with Unary Plus
```sql
SELECT +10 AS positive_num, -10 AS negative_num FROM dual;
```
👉 Demonstrates the difference between positive and negative values.

---

## 📘 Example 4: Expression Usage
```sql
SELECT (salary - deductions) AS net_income,
       (-deductions) AS negative_deduction
FROM employees;
```
👉 Uses unary minus to explicitly mark deductions as negative.

---

## 📊 Unary Minus Operator Summary

| Feature | Purpose | Example | Result |
|---------|---------|---------|--------|
| **Negate Constant** | Negative number | `-10` | -10 |
| **Column Negation** | Invert column value | `-salary` | Negative salary |
| **Combined with Plus** | Show contrast | `+10`, `-10` | 10, -10 |
| **Expression Usage** | Adjust signs | `(-deductions)` | Negative deduction |

---

✅ The unary minus operator is Oracle SQL’s **sign‑changer**, making it essential for representing losses, deductions, or negative values in queries.