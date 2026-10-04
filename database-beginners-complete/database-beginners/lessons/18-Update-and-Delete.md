# Lesson 18 — UPDATE & DELETE

## UPDATE

```sql
UPDATE table_name
SET col1 = val1, col2 = val2
WHERE condition;
```

Example:

```sql
UPDATE student
SET grade = 'O'
WHERE grade = 'A';
```

## DELETE

```sql
DELETE FROM table_name
WHERE condition;
```

Example:

```sql
DELETE FROM student
WHERE marks < 33;
```

## Practice
1. Grade update করুন।
2. marks < 33 records delete করুন।
3. WHERE ছাড়া UPDATE/DELETE-এর ঝুঁকি ব্যাখ্যা করুন।

## Next Lesson
`19-Alter-Table.md`
