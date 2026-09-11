### 📘 Oracle SQL – **Concatenation Operator (`||`)**

In Oracle SQL, the **concatenation operator (`||`)** is used to **join two or more strings together** into a single string. Unlike the `CONCAT()` function (which only accepts two arguments), the `||` operator can handle **multiple strings easily**.

---

## 🔑 Key Features
- Works with **text, numbers (converted to text), and expressions**.  
- More flexible than `CONCAT()` because it supports multiple arguments.  
- Often used to build full names, codes, or formatted outputs.  

---

## 📘 Example 1: Combine First and Last Name
```sql
SELECT first_name || ' ' || last_name AS full_name
FROM employees;
```
👉 Produces `John Smith` by joining first and last names with a space.

---

## 📘 Example 2: Add Prefix to Employee ID
```sql
SELECT 'EMP-' || employee_id AS emp_code
FROM employees;
```
👉 Creates codes like `EMP-101`.

---

## 📘 Example 3: Format Order Details
```sql
SELECT 'Order ' || order_id || ' placed on ' || TO_CHAR(order_date, 'DD-MON-YYYY') AS order_info
FROM orders;
```
👉 Produces strings like `Order 5001 placed on 11-SEP-2026`.

---

## 📘 Example 4: Combine City and Country
```sql
SELECT city || ', ' || country AS location
FROM customers;
```
👉 Returns values like `Dhaka, Bangladesh`.

---

## 📊 Concatenation Operator Summary

| Use Case | Example | Result |
|----------|---------|--------|
| **Full Name** | `first_name || ' ' || last_name` | `John Smith` |
| **Employee Code** | `'EMP-' || employee_id` | `EMP-101` |
| **Order Info** | `'Order ' || order_id || ' placed on ' || order_date` | `Order 5001 placed on 11-SEP-2026` |
| **Location** | `city || ', ' || country` | `Dhaka, Bangladesh` |

---

✅ The **concatenation operator (`||`)** is Oracle SQL’s most powerful way to merge strings—perfect for names, codes, formatted messages, or combining multiple fields.