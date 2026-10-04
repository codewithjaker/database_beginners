# 06 — Create Table & SQL Data Types

## Database নির্বাচন

```sql
USE db_name;
```

## Table তৈরি

```sql
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

## SQL Data Types
Data type column-এ কী ধরনের value রাখা যাবে তা নির্ধারণ করে।

PDF-এ আলোচিত types:
- `CHAR`
- `VARCHAR`
- `BLOB`
- `INT`
- `TINYINT`
- `BIGINT`
- `BIT`
- `FLOAT`
- `DOUBLE`
- `BOOLEAN`
- `DATE`
- `YEAR`

## Signed & Unsigned
উদাহরণ:

```text
TINYINT        -128 to 127
TINYINT UNSIGNED  0 to 255
```

## Practice
1. `employee` table তৈরি করুন।
2. `id`, `name`, `age` column যোগ করুন।
3. কোন column-এর জন্য `VARCHAR` ব্যবহার করবেন তা নির্ধারণ করুন।

## Next Lesson
`07-SQL-Commands-DDL-DML-DCL-DQL-TCL.md`
