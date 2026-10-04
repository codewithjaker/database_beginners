# Lesson 15 — GROUP BY

একই value থাকা rows-কে group করে summary result তৈরি করে।

```sql
SELECT city, COUNT(name)
FROM student
GROUP BY city;
```

সাধারণত aggregate function-এর সাথে `GROUP BY` ব্যবহার করা হয়।

## Practice
1. City-wise student count করুন।
2. Grade-wise count করুন।
3. City-wise average marks বের করুন।

## Next Lesson
`16-Having-Clause.md`
