# 22 — LEFT, RIGHT & FULL JOIN

## LEFT JOIN
Left table-এর সব records এবং right table-এর matching records return করে।

```sql
SELECT column(s)
FROM tableA
LEFT JOIN tableB
ON tableA.col_name = tableB.col_name;
```

Example:

```sql
SELECT *
FROM student AS s
LEFT JOIN course AS c
ON s.student_id = c.student_id;
```

## RIGHT JOIN
Right table-এর সব records এবং left table-এর matching records return করে।

```sql
SELECT column(s)
FROM tableA
RIGHT JOIN tableB
ON tableA.col_name = tableB.col_name;
```

Example:

```sql
SELECT *
FROM student AS s
RIGHT JOIN course AS c
ON s.student_id = c.student_id;
```

## FULL JOIN
Left বা right—যেকোনো table-এ match থাকলে সব records return করে।

PDF-এ MySQL-এর জন্য `LEFT JOIN + UNION + RIGHT JOIN` ব্যবহার করে Full Join দেখানো হয়েছে:

```sql
SELECT *
FROM student AS a
LEFT JOIN course AS b
ON a.id = b.id
UNION
SELECT *
FROM student AS a
RIGHT JOIN course AS b
ON a.id = b.id;
```

## Practice
1. LEFT JOIN লিখুন।
2. RIGHT JOIN লিখুন।
3. MySQL-এ FULL JOIN-এর PDF-based query লিখুন।

## Next Lesson
`23-Exclusive-Join-and-Self-Join.md`
