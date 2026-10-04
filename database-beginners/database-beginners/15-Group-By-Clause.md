# 15 — GROUP BY Clause

`GROUP BY` একই value থাকা rows-কে group করে summary result তৈরি করে।

সাধারণত `GROUP BY` aggregate function-এর সাথে ব্যবহার করা হয়।

## Example
প্রতিটি city-তে কতজন student আছে:

```sql
SELECT city, COUNT(name)
FROM student
GROUP BY city;
```

## সহজভাবে
যদি একই city-এর একাধিক student থাকে, `GROUP BY city` তাদের এক group হিসেবে বিবেচনা করে।

## Practice
1. City অনুযায়ী student count করুন।
2. Grade অনুযায়ী student count করুন।
3. City অনুযায়ী average marks বের করার query লিখুন।

## Next Lesson
`16-Having-Clause.md`
