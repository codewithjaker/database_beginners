# 21 — SQL JOIN & INNER JOIN

## JOIN কী?
JOIN দুই বা তার বেশি table-এর related column-এর ভিত্তিতে rows combine করতে ব্যবহৃত হয়।

## Types of JOIN
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL JOIN
- SELF JOIN

## INNER JOIN
দুই table-এ matching value থাকা records return করে।

### Syntax

```sql
SELECT column(s)
FROM tableA
INNER JOIN tableB
ON tableA.col_name = tableB.col_name;
```

### Example

```sql
SELECT *
FROM student
INNER JOIN course
ON student.student_id = course.student_id;
```

PDF-এর example-এ student table-এর `102` ও `103` records course table-এর matching student IDs-এর সাথে result-এ এসেছে।

## Practice
1. Student ও Course table তৈরি করুন।
2. Common ID দিয়ে INNER JOIN করুন।
3. শুধু matching records দেখান।

## Next Lesson
`22-Left-Right-and-Full-Join.md`
