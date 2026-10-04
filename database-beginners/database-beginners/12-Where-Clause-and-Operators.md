# 12 — WHERE Clause & Operators

## WHERE
কোনো condition অনুযায়ী data select করতে `WHERE` ব্যবহার করা হয়।

```sql
SELECT col1, col2
FROM table_name
WHERE condition;
```

### Example

```sql
SELECT *
FROM student
WHERE marks > 80;
```

```sql
SELECT *
FROM student
WHERE city = 'Mumbai';
```

## Arithmetic Operators
- `+` Addition
- `-` Subtraction
- `*` Multiplication
- `/` Division
- `%` Modulus

## Comparison Operators
- `=`
- `!=`
- `>`
- `>=`
- `<`
- `<=`

## Logical Operators
- `AND`
- `OR`
- `NOT`
- `IN`
- `BETWEEN`
- `ALL`
- `LIKE`
- `ANY`

## AND

```sql
SELECT *
FROM student
WHERE marks > 80 AND city = 'Mumbai';
```

## OR

```sql
SELECT *
FROM student
WHERE marks > 90 OR city = 'Mumbai';
```

## BETWEEN

```sql
SELECT *
FROM student
WHERE marks BETWEEN 80 AND 90;
```

## IN

```sql
SELECT *
FROM student
WHERE city IN ('Delhi', 'Mumbai');
```

## NOT

```sql
SELECT *
FROM student
WHERE city NOT IN ('Delhi', 'Mumbai');
```

## Bitwise
- `&` Bitwise AND
- `|` Bitwise OR

## Practice
1. 80-এর বেশি marks-এর student বের করুন।
2. Delhi অথবা Mumbai-এর student বের করুন।
3. 80 থেকে 90 marks-এর student বের করুন।

## Next Lesson
`13-Limit-and-Order-By.md`
