# Lesson 08 — Primary Key & Foreign Key

## Primary Key
প্রতিটি row-কে uniquely identify করে। একটি table-এ একটি Primary Key থাকে এবং এটি NULL হওয়া উচিত নয়।

```sql
id INT PRIMARY KEY
```

## Foreign Key
অন্য table-এর Primary Key-কে reference করে।

```sql
FOREIGN KEY (cityId) REFERENCES city(id)
```

Foreign Key duplicate বা NULL হতে পারে এবং একাধিক Foreign Key থাকতে পারে।

## Practice
1. Primary Key কী?
2. Foreign Key কী?
3. Parent ও Child table-এর relationship ব্যাখ্যা করুন।

## Next Lesson
`09-SQL-Constraints.md`
