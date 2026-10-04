# 24 — UNION, Subquery & MySQL Views

## Part 1 — UNION

`UNION` দুই বা তার বেশি `SELECT` statement-এর result-set combine করতে ব্যবহৃত হয়।

```sql
SELECT column(s) FROM tableA
UNION
SELECT column(s) FROM tableB;
```

## UNION-এর গুরুত্বপূর্ণ নিয়ম
প্রতিটি SELECT-এর:
- একই সংখ্যক columns থাকতে হবে।
- Columns-এর data types compatible/similar হতে হবে।
- Columns একই order-এ থাকতে হবে।

PDF অনুযায়ী UNION unique records দেয়।

---

# Part 2 — SQL Subquery

**Subquery / Inner Query / Nested Query** হলো একটি SQL query-এর ভিতরে আরেকটি query।

সাধারণত এতে দুইটি SELECT statement থাকতে পারে।

### Basic Syntax

```sql
SELECT column(s)
FROM table_name
WHERE col_name operator
(
    subquery
);
```

## Example Concept 1 — Class Average-এর চেয়ে বেশি marks

Problem:
> Class average-এর চেয়ে বেশি marks পাওয়া students-এর নাম বের করুন।

ধাপ:
1. Class-এর average বের করুন।
2. যাদের marks average-এর চেয়ে বেশি তাদের names বের করুন।

## Example Concept 2 — Even Roll Numbers

Problem:
> Even roll number-এর students-এর names বের করুন।

ধাপ:
1. Even roll numbers বের করুন।
2. ঐ roll numbers-এর students-এর names বের করুন।

## FROM-এর সাথে Subquery

PDF-এ একটি `FROM` subquery example দেখানো হয়েছে, যেখানে একটি subquery-এর result ব্যবহার করে পরবর্তী calculation করা হয়।

---

# Part 3 — MySQL Views

## View কী?
A **View** হলো SQL statement-এর result-set-এর উপর ভিত্তি করে তৈরি একটি **virtual table**।

PDF অনুযায়ী View query করলে database engine view-কে বর্তমান data অনুযায়ী দেখায়।

## Basic Concept

```sql
CREATE VIEW view_name AS
SELECT column(s)
FROM table_name;
```

তারপর:

```sql
SELECT *
FROM view_name;
```

## Practice
1. দুইটি SELECT statement UNION করুন।
2. একটি simple subquery লিখুন।
3. Average-এর চেয়ে বেশি marks-এর students বের করার subquery তৈরি করুন।
4. একটি View তৈরি করুন এবং SELECT করুন।

## Final Practice Project
একটি ছোট Student Database তৈরি করুন যেখানে থাকবে:
- Database
- Student table
- Course table
- Primary Key
- Foreign Key
- Constraints
- INSERT
- SELECT
- WHERE
- GROUP BY
- HAVING
- ORDER BY
- Aggregate Functions
- UPDATE
- DELETE
- ALTER
- JOIN
- UNION
- Subquery
- View

## Course Completion
এই ২৪টি lesson শেষ করলে Database & SQL-এর PDF-ভিত্তিক core topics সম্পন্ন হবে।
