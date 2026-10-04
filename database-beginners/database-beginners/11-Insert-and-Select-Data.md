# 11 — INSERT & SELECT

## INSERT
Table-এ data যোগ করতে `INSERT INTO` ব্যবহার করা হয়।

```sql
INSERT INTO table_name
(colname1, colname2)
VALUES
(col1_v1, col2_v1),
(col1_v2, col2_v2);
```

### Example

```sql
INSERT INTO student (rollNo, name)
VALUES
(101, 'karan'),
(102, 'arjun');
```

## SELECT
Database থেকে data দেখতে `SELECT` ব্যবহার করা হয়।

### নির্দিষ্ট column

```sql
SELECT col1, col2
FROM table_name;
```

### সব column

```sql
SELECT *
FROM table_name;
```

## Practice
1. Student table-এ ৫টি record insert করুন।
2. শুধু `name` ও `marks` select করুন।
3. সব record দেখান।

## Next Lesson
`12-Where-Clause-and-Operators.md`
