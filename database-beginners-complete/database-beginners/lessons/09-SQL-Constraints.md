# Lesson 09 — SQL Constraints

Constraints table-এর data-এর জন্য rules নির্ধারণ করে।

### NOT NULL
```sql
name VARCHAR(50) NOT NULL
```

### UNIQUE
```sql
email VARCHAR(100) UNIQUE
```

### PRIMARY KEY
```sql
id INT PRIMARY KEY
```

### FOREIGN KEY
```sql
FOREIGN KEY (cust_id) REFERENCES customer(id)
```

### DEFAULT
```sql
salary INT DEFAULT 25000
```

### CHECK
```sql
age INT CHECK (age >= 18)
```

## Practice
একটি table-এ অন্তত ৪টি constraint ব্যবহার করুন।

## Next Lesson
`10-Foreign-Key-Cascade.md`
