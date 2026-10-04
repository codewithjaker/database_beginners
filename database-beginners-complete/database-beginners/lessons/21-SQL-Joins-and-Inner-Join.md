# Lesson 21 — SQL JOIN & INNER JOIN

JOIN related column-এর ভিত্তিতে দুই বা তার বেশি table-এর rows combine করে।

## Types
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL JOIN
- SELF JOIN

## INNER JOIN
দুই table-এ matching records return করে।

```sql
SELECT column(s)
FROM tableA
INNER JOIN tableB
ON tableA.col_name = tableB.col_name;
```

Example:

```sql
SELECT *
FROM student
INNER JOIN course
ON student.student_id = course.student_id;
```

## Practice
Student ও Course table দিয়ে INNER JOIN করুন।

## Next Lesson
`22-Left-Right-and-Full-Join.md`
