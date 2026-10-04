# 18 — UPDATE & DELETE

## UPDATE
Existing row-এর data পরিবর্তন করতে `UPDATE` ব্যবহার করা হয়।

```sql
UPDATE table_name
SET col1 = val1, col2 = val2
WHERE condition;
```

### Example

```sql
UPDATE student
SET grade = 'O'
WHERE grade = 'A';
```

## DELETE
Existing row delete করতে:

```sql
DELETE FROM table_name
WHERE condition;
```

### Example

```sql
DELETE FROM student
WHERE marks < 33;
```

## গুরুত্বপূর্ণ সতর্কতা
`UPDATE` বা `DELETE` করার সময় condition ঠিকভাবে দেওয়া গুরুত্বপূর্ণ।

## Practice
1. একটি student-এর grade update করুন।
2. 33-এর কম marks-এর records delete করার query লিখুন।
3. `WHERE` ছাড়া UPDATE/DELETE-এর ঝুঁকি ব্যাখ্যা করুন।

## Next Lesson
`19-Alter-Table.md`
