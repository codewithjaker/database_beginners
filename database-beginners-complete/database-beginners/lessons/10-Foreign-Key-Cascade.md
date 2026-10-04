# Lesson 10 — Foreign Key Cascade

## ON DELETE CASCADE
Parent table-এর referenced row delete হলে child table-এর referencing rows delete হয়।

## ON UPDATE CASCADE
Parent-এর referenced key update হলে child-এর referencing values update হয়।

```sql
CREATE TABLE student (
    id INT PRIMARY KEY,
    courseID INT,
    FOREIGN KEY (courseID)
        REFERENCES course(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
```

## Practice
1. ON DELETE CASCADE ব্যাখ্যা করুন।
2. ON UPDATE CASCADE ব্যাখ্যা করুন।
3. Parent/Child table তৈরি করুন।

## Next Lesson
`11-Insert-and-Select-Data.md`
