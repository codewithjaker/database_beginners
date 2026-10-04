# 23 — Exclusive JOIN & SELF JOIN

## Exclusive JOIN
Matching অংশ বাদ দিয়ে শুধুমাত্র এক পাশের records বের করা যায়।

### Left Exclusive Join

```sql
SELECT *
FROM student AS a
LEFT JOIN course AS b
ON a.id = b.id
WHERE b.id IS NULL;
```

`WHERE b.id IS NULL` matching right-side record না থাকা rows নির্বাচন করে।

### Right Exclusive Join
একই ধারণায় RIGHT JOIN ব্যবহার করে right-side exclusive records বের করা যায়।

## SELF JOIN
একটি table-কে নিজের সাথেই join করাকে Self Join বলে।

### Syntax

```sql
SELECT column(s)
FROM table AS a
JOIN table AS b
ON a.col_name = b.col_name;
```

একই table-কে দুইটি alias দিয়ে ব্যবহার করা হয়।

## Example ধারণা
Employee table-এর records-এর মধ্যে relationship বের করতে Self Join ব্যবহার করা যেতে পারে।

## Practice
1. Left Exclusive Join query লিখুন।
2. Right Exclusive Join-এর query লিখুন।
3. একটি Employee table দিয়ে Self Join practice করুন।

## Next Lesson
`24-Union-Subquery-and-MySQL-Views.md`
