# Lesson 11 — INSERT & SELECT

## INSERT

```sql
INSERT INTO table_name (col1, col2)
VALUES
(val1, val2),
(val3, val4);
```

Example:

```sql
INSERT INTO student (rollNo, name)
VALUES
(101, 'karan'),
(102, 'arjun');
```

## SELECT

```sql
SELECT col1, col2 FROM table_name;
SELECT * FROM table_name;
```

## Practice
1. ৫টি student record insert করুন।
2. শুধু `name` ও `marks` select করুন।
3. সব record দেখান।

## Next Lesson
`12-Where-Clause-and-Operators.md`
