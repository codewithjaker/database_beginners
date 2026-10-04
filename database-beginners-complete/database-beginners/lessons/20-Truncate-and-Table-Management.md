# Lesson 20 — TRUNCATE & Table Data Management

## TRUNCATE

```sql
TRUNCATE TABLE table_name;
```

Table structure রেখে table-এর data সরাতে এটি ব্যবহার করা হয়।

## DELETE বনাম TRUNCATE
`DELETE` condition দিয়ে নির্দিষ্ট rows delete করতে পারে।

```sql
DELETE FROM student WHERE marks < 33;
```

`TRUNCATE` table-এর data একসাথে remove করার জন্য ব্যবহৃত হয়।

## Practice
DELETE এবং TRUNCATE-এর ব্যবহার লিখুন।

## Next Lesson
`21-SQL-Joins-and-Inner-Join.md`
