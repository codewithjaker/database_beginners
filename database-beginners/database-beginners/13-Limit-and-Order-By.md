# 13 — LIMIT & ORDER BY

## LIMIT
কতগুলো row return হবে তার upper limit নির্ধারণ করে।

```sql
SELECT col1, col2
FROM table_name
LIMIT number;
```

### Example

```sql
SELECT *
FROM student
LIMIT 3;
```

## ORDER BY
Data ascending বা descending order-এ সাজাতে ব্যবহার করা হয়।

```sql
SELECT *
FROM student
ORDER BY city ASC;
```

### ASC
Ascending order

### DESC
Descending order

```sql
SELECT *
FROM student
ORDER BY marks DESC;
```

## Practice
1. প্রথম ৫টি student দেখান।
2. marks ascending order-এ সাজান।
3. marks descending order-এ সাজান।

## Next Lesson
`14-Aggregate-Functions.md`
