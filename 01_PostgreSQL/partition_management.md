### 📘 Oracle SQL – **Partition Management Example**

Partition management in Oracle SQL allows you to **add, drop, split, merge, and exchange partitions** to keep large tables optimized and maintainable. This is critical for **big data systems** where performance and scalability matter.

---

## 🔑 Adding a Partition
```sql
ALTER TABLE sales
ADD PARTITION p2027 VALUES LESS THAN (TO_DATE('01-JAN-2028','DD-MON-YYYY'));
```
👉 Adds a new partition for **2027 data**.

---

## 📘 Dropping a Partition
```sql
ALTER TABLE sales
DROP PARTITION p2025;
```
👉 Removes the **2025 partition** and its data.

---

## 📘 Splitting a Partition
```sql
ALTER TABLE sales
SPLIT PARTITION p2026 AT (TO_DATE('01-JUL-2026','DD-MON-YYYY'))
INTO (PARTITION p2026a, PARTITION p2026b);
```
👉 Splits the **2026 partition** into two based on a date boundary.

---

## 📘 Merging Partitions
```sql
ALTER TABLE sales
MERGE PARTITIONS p2026a, p2026b INTO PARTITION p2026;
```
👉 Combines two partitions back into one.

---

## 📘 Exchanging Partitions
```sql
ALTER TABLE sales
EXCHANGE PARTITION p2026
WITH TABLE staging_sales;
```
👉 Swaps data between a partition and a **staging table** (useful for ETL operations).

---

## 📊 Partition Management Operations

| Operation | Purpose | Example |
|-----------|---------|---------|
| **Add Partition** | Extend table for new data | `ALTER TABLE ADD PARTITION` |
| **Drop Partition** | Remove old data | `ALTER TABLE DROP PARTITION` |
| **Split Partition** | Divide partition into smaller ranges | `ALTER TABLE SPLIT PARTITION` |
| **Merge Partitions** | Combine partitions | `ALTER TABLE MERGE PARTITIONS` |
| **Exchange Partition** | Swap with staging table | `ALTER TABLE EXCHANGE PARTITION` |

---

✅ Partition management ensures **performance tuning**, **data lifecycle control**, and **efficient ETL workflows** in Oracle SQL.