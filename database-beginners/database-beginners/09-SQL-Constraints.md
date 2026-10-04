# 09 — SQL Constraints

SQL constraints table-এর data-এর জন্য rules নির্ধারণ করে।

## NOT NULL
Column-এ NULL value নিষিদ্ধ করে।

```sql
col1 INT NOT NULL
```

## UNIQUE
একটি column-এর সব value আলাদা রাখে।

```sql
col2 INT UNIQUE
```

## PRIMARY KEY
Column-কে unique এবং NOT NULL হিসেবে ব্যবহার করে।

```sql
id INT PRIMARY KEY
```

## FOREIGN KEY

```sql
FOREIGN KEY (cust_id)
REFERENCES customer(id)
```

## DEFAULT
Value না দিলে default value ব্যবহার করে।

```sql
salary INT DEFAULT 25000
```

## CHECK
Allowed value-এর উপর condition দিতে পারে।

```sql
age INT CHECK (age >= 18)
```

## Practice
1. `NOT NULL` ও `UNIQUE`-এর পার্থক্য লিখুন।
2. একটি table-এ Primary Key ব্যবহার করুন।
3. age-এর জন্য `CHECK (age >= 18)` লিখুন।

## Next Lesson
`10-Foreign-Key-Cascade.md`
