# Lesson 16 — HAVING

`HAVING` grouping-এর পরে condition প্রয়োগ করতে ব্যবহৃত হয়।

```sql
SELECT COUNT(name), city
FROM student
GROUP BY city
HAVING MAX(marks) > 90;
```

## WHERE বনাম HAVING
- WHERE → rows-এর condition
- HAVING → grouped result-এর condition

## Practice
Maximum marks 90-এর বেশি এমন city-এর group বের করুন।

## Next Lesson
`17-SQL-Query-Execution-Order.md`
