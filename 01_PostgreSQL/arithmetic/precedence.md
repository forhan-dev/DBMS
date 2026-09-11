### 📘 Oracle SQL – **Operator Precedence Examples**

Operator precedence determines **the order in which Oracle SQL evaluates expressions**. Understanding this is crucial because the same expression can yield different results depending on precedence.

---

## 🔑 Precedence Rules (High → Low)
1. **Unary +, -**  
2. **Multiplication, Division**  
3. **Addition, Subtraction, Concatenation**  
4. **Comparison**  
5. **Logical NOT**  
6. **Logical AND**  
7. **Logical OR**  
8. **Set Operators**  

---

## 📘 Example 1: Arithmetic Precedence
```sql
SELECT 1 + 2 * 3 AS result FROM dual;
-- Multiplication first → 1 + (2*3) = 7
```

---

## 📘 Example 2: Unary Minus with Multiplication
```sql
SELECT -2 * 3 AS result FROM dual;
-- Unary minus first → (-2) * 3 = -6
```

---

## 📘 Example 3: Parentheses Override
```sql
SELECT (1 + 2) * 3 AS result FROM dual;
-- Parentheses first → (3) * 3 = 9
```

---

## 📘 Example 4: Comparison with Arithmetic
```sql
SELECT * 
FROM employees
WHERE salary + commission_pct * 1000 > 5000;
-- Multiplication first → salary + (commission_pct*1000)
```

---

## 📘 Example 5: Logical Operators
```sql
SELECT * 
FROM employees
WHERE department_id = 10 OR department_id = 20 AND salary > 3000;
-- AND first → dept_id=20 AND salary>3000, then OR dept_id=10
```

---

## 📊 Operator Precedence Examples Summary

| Example | Expression | Evaluation | Result |
|---------|------------|------------|--------|
| **Arithmetic** | `1 + 2 * 3` | Multiplication first | 7 |
| **Unary Minus** | `-2 * 3` | Negation first | -6 |
| **Parentheses** | `(1 + 2) * 3` | Parentheses first | 9 |
| **Comparison** | `salary + commission_pct * 1000 > 5000` | Multiplication first | Filtered rows |
| **Logical** | `dept_id=10 OR dept_id=20 AND salary>3000` | AND before OR | Filtered rows |

---

✅ Operator precedence ensures **consistent evaluation order** in Oracle SQL. Parentheses can always be used to **override default precedence** for clarity.