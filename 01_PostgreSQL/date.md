### 📘 Oracle SQL – **TO_DATE Function Example**

The **`TO_DATE`** function converts a **string into a DATE value** using a specified format model. It’s essential when working with text-based date inputs that need to be stored or compared as proper Oracle DATE types.

---

## 🔑 Example 1: Basic String to Date
```sql
SELECT TO_DATE('2026-09-09', 'YYYY-MM-DD') AS converted_date
FROM dual;
```
👉 Converts the string `'2026-09-09'` into a DATE value.

---

## 📘 Example 2: Custom Date Format
```sql
SELECT TO_DATE('09-SEP-2026', 'DD-MON-YYYY') AS converted_date
FROM dual;
```
👉 Interprets the string with day, abbreviated month, and year.

---

## 📘 Example 3: Date with Time
```sql
SELECT TO_DATE('09-09-2026 14:30:00', 'DD-MM-YYYY HH24:MI:SS') AS converted_datetime
FROM dual;
```
👉 Converts a string into a DATE value including hours, minutes, and seconds.

---

## 📘 Example 4: Use in Table Insert
```sql
INSERT INTO employees (employee_id, hire_date)
VALUES (101, TO_DATE('2026-09-09', 'YYYY-MM-DD'));
```
👉 Inserts a proper DATE value into the `hire_date` column.

---

## 📊 TO_DATE Function Summary

| Use Case | Purpose | Example |
|----------|---------|---------|
| **Basic Conversion** | String → DATE | `TO_DATE('2026-09-09', 'YYYY-MM-DD')` |
| **Custom Format** | Handle different string formats | `TO_DATE('09-SEP-2026', 'DD-MON-YYYY')` |
| **Date + Time** | Include time components | `TO_DATE('09-09-2026 14:30:00', 'DD-MM-YYYY HH24:MI:SS')` |
| **Insert Usage** | Store proper DATE in table | `TO_DATE('2026-09-09', 'YYYY-MM-DD')` |

---

✅ The `TO_DATE` function is Oracle’s **bridge between text and true DATE values**, ensuring accurate storage, comparison, and manipulation of time-based data.