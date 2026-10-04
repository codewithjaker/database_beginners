# 10 — Foreign Key Cascade

Foreign Key relationship-এর সাথে cascade option ব্যবহার করা যায়।

## ON DELETE CASCADE
Parent table-এর referenced row delete হলে child table-এর referencing row-ও delete হয়।

```sql
CREATE TABLE student (
    id INT PRIMARY KEY,
    courseID INT,
    FOREIGN KEY (courseID)
        REFERENCES course(id)
        ON DELETE CASCADE
);
```

## ON UPDATE CASCADE
Parent table-এর referenced key update হলে child table-এর corresponding value update হয়।

```sql
CREATE TABLE student (
    id INT PRIMARY KEY,
    courseID INT,
    FOREIGN KEY (courseID)
        REFERENCES course(id)
        ON UPDATE CASCADE
);
```

দুটো একসাথে:

```sql
FOREIGN KEY (courseID) REFERENCES course(id)
ON DELETE CASCADE
ON UPDATE CASCADE
```

## Practice
1. ON DELETE CASCADE কী করে?
2. ON UPDATE CASCADE কী করে?
3. Parent ও child table-এর উদাহরণ তৈরি করুন।

## Next Lesson
`11-Insert-and-Select-Data.md`
