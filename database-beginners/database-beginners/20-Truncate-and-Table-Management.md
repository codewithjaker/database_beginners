# 20 — TRUNCATE & Table Data Management

## TRUNCATE
Table-এর data delete করতে `TRUNCATE TABLE` ব্যবহার করা হয়।

```sql
TRUNCATE TABLE table_name;
```

এটি table structure রেখে table-এর data সরানোর জন্য ব্যবহৃত হয়।

## DELETE বনাম TRUNCATE
এই PDF-এ `DELETE` এবং `TRUNCATE` দুটিই table data management-এর জন্য দেখানো হয়েছে।

### DELETE
Condition ব্যবহার করে নির্দিষ্ট rows delete করা যায়।

```sql
DELETE FROM student
WHERE marks < 33;
```

### TRUNCATE

```sql
TRUNCATE TABLE student;
```

## Practice
1. নির্দিষ্ট marks-এর rows delete করুন।
2. একটি table-এর সব data truncate করার query লিখুন।
3. DELETE ও TRUNCATE-এর কাজ তুলনা করুন।

## Next Lesson
`21-SQL-Joins-and-Inner-Join.md`
