# Lesson 19 — ALTER TABLE

## ADD COLUMN
```sql
ALTER TABLE table_name
ADD COLUMN column_name datatype constraint;
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
```sql
ALTER TABLE table_name
CHANGE COLUMN old_name new_name new_datatype new_constraint;
```

## Practice
প্রতিটি operation-এর একটি করে query লিখুন।

## Next Lesson
`20-Truncate-and-Table-Management.md`
