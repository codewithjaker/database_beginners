# Lesson 22 — LEFT, RIGHT & FULL JOIN

## LEFT JOIN
Left table-এর সব records এবং right-এর matching records।

```sql
SELECT *
FROM student AS s
LEFT JOIN course AS c
ON s.student_id = c.student_id;
```

## RIGHT JOIN
Right table-এর সব records এবং left-এর matching records।

```sql
SELECT *
FROM student AS s
RIGHT JOIN course AS c
ON s.student_id = c.student_id;
```

## FULL JOIN
Left বা right যেকোনো পাশে match থাকলে records return করে।

PDF-এর MySQL approach:

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
LEFT, RIGHT এবং FULL JOIN-এর query লিখুন।

## Next Lesson
`23-Exclusive-Join-and-Self-Join.md`
