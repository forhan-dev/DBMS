### 📘 Oracle SQL – **Unary Plus Operator (+)**

The **unary plus (`+`)** operator in Oracle SQL is used to **indicate a positive numeric value**. While it doesn’t change the value itself, it can be useful for clarity in expressions or when explicitly distinguishing between positive and negative numbers.

---

## 🔑 Key Features
- Works with **numeric data types** (`NUMBER`, `FLOAT`, etc.).  
- Rarely used explicitly, since numbers are positive by default.  
- Useful in expressions where both **unary plus** and **unary minus** are applied for clarity.  

---

## 📘 Example 1: Simple Unary Plus
```sql
SELECT +10 AS positive_value FROM dual;
-- Result: 10
```
👉 Explicitly marks the number as positive.

---

## 📘 Example 2: Unary Plus with Columns
```sql
SELECT +salary AS positive_salary
FROM employees;
```
👉 Ensures salary is treated as a positive value.

---

## 📘 Example 3: Combined with Unary Minus
```sql
SELECT +10 AS positive_num, -10 AS negative_num FROM dual;
```
👉 Demonstrates the difference between positive and negative values.

---

## 📘 Example 4: Expression Clarity
```sql
SELECT (+salary - deductions) AS net_income
FROM employees;
```
👉 Uses unary plus for clarity in an arithmetic expression.

---

## 📊 Unary Plus Operator Summary

| Feature | Purpose | Example | Result |
|---------|---------|---------|--------|
| **Positive Value** | Explicitly mark positive | `+10` | 10 |
| **Column Usage** | Ensure positivity | `+salary` | Salary |
| **Combined with Minus** | Show contrast | `+10`, `-10` | 10, -10 |
| **Expression Clarity** | Clear arithmetic | `(+salary - deductions)` | Net income |

---

✅ The unary plus operator is mostly **symbolic**, reinforcing positivity in numeric expressions. It’s rarely required, but can improve readability when paired with **Unary Minus** or complex arithmetic.