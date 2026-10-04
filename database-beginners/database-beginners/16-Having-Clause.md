# 16 — HAVING Clause

`HAVING` grouping-এর পরে condition প্রয়োগ করতে ব্যবহৃত হয়।

## WHERE বনাম HAVING
- `WHERE` → grouping-এর আগে rows filter করতে ব্যবহৃত হয়।
- `HAVING` → grouping-এর পরে group-এর উপর condition দিতে ব্যবহৃত হয়।

## Example

```sql
SELECT COUNT(name), city
FROM student
GROUP BY city
HAVING MAX(marks) > 90;
```

এখানে city অনুযায়ী group করার পর যেসব city-এর maximum marks 90-এর বেশি, সেগুলো রাখা হচ্ছে।

## Practice
1. City অনুযায়ী group করুন।
2. Maximum marks 90-এর বেশি এমন city বের করুন।
3. `WHERE` ও `HAVING`-এর পার্থক্য লিখুন।

## Next Lesson
`17-SQL-Query-Execution-Order.md`
