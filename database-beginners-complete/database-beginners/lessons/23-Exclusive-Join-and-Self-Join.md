# Lesson 23 — Exclusive JOIN & SELF JOIN

## Left Exclusive Join

```sql
SELECT *
FROM student AS a
LEFT JOIN course AS b
ON a.id = b.id
WHERE b.id IS NULL;
```

## Right Exclusive Join
RIGHT JOIN ব্যবহার করে unmatched right-side records বের করা যায়।

## SELF JOIN
একটি table-কে নিজের সাথেই join করা।

```sql
SELECT column(s)
FROM table AS a
JOIN table AS b
ON a.col_name = b.col_name;
```

## Practice
1. Left Exclusive Join লিখুন।
2. Right Exclusive Join লিখুন।
3. Employee table দিয়ে Self Join practice করুন।

## Next Lesson
`24-Union-Subquery-and-MySQL-Views.md`
