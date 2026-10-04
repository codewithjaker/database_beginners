# Lesson 24 — UNION, Subquery & MySQL Views

## UNION

```sql
SELECT column(s) FROM tableA
UNION
SELECT column(s) FROM tableB;
```

Rules:
- SELECT statements-এ একই number of columns
- Similar/compatible data types
- Same column order

## Subquery
Subquery / Inner Query / Nested Query হলো একটি query-এর ভিতরে আরেকটি query।

```sql
SELECT column(s)
FROM table_name
WHERE col_name operator
(
    subquery
);
```

PDF examples:
- Class average-এর চেয়ে বেশি marks-এর students
- Even roll numbers-এর students
- `FROM` subquery দিয়ে calculation

## MySQL Views
View হলো SQL statement-এর result-set-এর ভিত্তিতে তৈরি virtual table।

Basic concept:

```sql
CREATE VIEW view_name AS
SELECT column(s)
FROM table_name;

SELECT * FROM view_name;
```

## Final Practice
একটি Student Database তৈরি করে CRUD, constraints, aggregation, JOIN, UNION, subquery ও view practice করুন।
