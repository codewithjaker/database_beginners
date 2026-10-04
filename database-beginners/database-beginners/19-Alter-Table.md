# 19 — ALTER TABLE

`ALTER TABLE` দিয়ে table-এর schema পরিবর্তন করা হয়।

## ADD COLUMN

```sql
ALTER TABLE table_name
ADD COLUMN column_name datatype constraint;
```

Example:

```sql
ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;
```

## DROP COLUMN

```sql
ALTER TABLE table_name
DROP COLUMN column_name;
```

## RENAME TABLE

```sql
ALTER TABLE table_name
RENAME TO new_table_name;
```

## MODIFY COLUMN

```sql
ALTER TABLE table_name
MODIFY col_name new_datatype new_constraint;
```

## CHANGE COLUMN
Column-এর নাম পরিবর্তন করতে:

```sql
ALTER TABLE table_name
CHANGE COLUMN old_name new_name new_datatype new_constraint;
```

## Practice
1. Student table-এ `age` column যোগ করুন।
2. একটি column drop করুন।
3. একটি table rename করুন।
4. একটি column-এর datatype modify করুন।
5. একটি column rename করুন।

## Next Lesson
`20-Truncate-and-Table-Management.md`
