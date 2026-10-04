# 17 — SQL Query General Order

PDF-এ একটি general SQL query structure দেখানো হয়েছে:

```sql
SELECT column(s)
FROM table_name
WHERE condition
GROUP BY column(s)
HAVING condition
ORDER BY column(s) ASC;
```

## Clause-এর sequence

1. `SELECT`
2. `FROM`
3. `WHERE`
4. `GROUP BY`
5. `HAVING`
6. `ORDER BY`

## Example

```sql
SELECT city, COUNT(name)
FROM student
WHERE marks >= 50
GROUP BY city
HAVING COUNT(name) > 1
ORDER BY city ASC;
```

## Practice
1. উপরের structure দেখে একটি city-wise query লিখুন।
2. `WHERE`, `GROUP BY`, `HAVING`, `ORDER BY` এক query-তে ব্যবহার করুন।

## Next Lesson
`18-Update-and-Delete.md`
