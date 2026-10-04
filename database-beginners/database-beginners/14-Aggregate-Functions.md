# 14 — Aggregate Functions

Aggregate function একাধিক value-এর উপর calculation করে একটি single value return করে।

## প্রধান Functions

- `COUNT()`
- `MAX()`
- `MIN()`
- `SUM()`
- `AVG()`

## COUNT

```sql
SELECT COUNT(name)
FROM student;
```

## MAX

```sql
SELECT MAX(marks)
FROM student;
```

## MIN

```sql
SELECT MIN(marks)
FROM student;
```

## SUM

```sql
SELECT SUM(marks)
FROM student;
```

## AVG

```sql
SELECT AVG(marks)
FROM student;
```

## Practice
1. মোট student count করুন।
2. Maximum marks বের করুন।
3. Minimum marks বের করুন।
4. Average marks বের করুন।
5. সব marks-এর sum বের করুন।

## Next Lesson
`15-Group-By-Clause.md`
