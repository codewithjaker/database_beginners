# Lesson 12 — WHERE & Operators

## WHERE

```sql
SELECT col1, col2
FROM table_name
WHERE condition;
```

## Operators
### Arithmetic
`+`, `-`, `*`, `/`, `%`

### Comparison
`=`, `!=`, `>`, `>=`, `<`, `<=`

### Logical
`AND`, `OR`, `NOT`, `IN`, `BETWEEN`, `ALL`, `LIKE`, `ANY`

### Bitwise
`&`, `|`

## Examples

```sql
SELECT * FROM student WHERE marks > 80;

SELECT * FROM student
WHERE marks > 80 AND city = 'Mumbai';

SELECT * FROM student
WHERE marks BETWEEN 80 AND 90;

SELECT * FROM student
WHERE city IN ('Delhi', 'Mumbai');

SELECT * FROM student
WHERE city NOT IN ('Delhi', 'Mumbai');
```

## Practice
৩টি condition-based query লিখুন।

## Next Lesson
`13-Limit-and-Order-By.md`
