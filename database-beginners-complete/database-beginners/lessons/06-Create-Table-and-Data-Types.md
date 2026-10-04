# Lesson 06 — Create Table & Data Types

## Table তৈরি

```sql
USE db_name;

CREATE TABLE table_name (
    column_name1 datatype constraint,
    column_name2 datatype constraint
);
```

### Example

```sql
CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);
```

## Data Types
PDF-এ আলোচিত:
`CHAR`, `VARCHAR`, `BLOB`, `INT`, `TINYINT`, `BIGINT`, `BIT`, `FLOAT`, `DOUBLE`, `BOOLEAN`, `DATE`, `YEAR`

## Signed & Unsigned

```text
TINYINT: -128 to 127
TINYINT UNSIGNED: 0 to 255
```

## Practice
একটি `employee` table তৈরি করুন।

## Next Lesson
`07-SQL-Commands-DDL-DML-DCL-DQL-TCL.md`
