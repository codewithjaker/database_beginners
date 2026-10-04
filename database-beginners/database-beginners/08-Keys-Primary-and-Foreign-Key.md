# 08 — Primary Key & Foreign Key

## Primary Key
Primary Key হলো এমন একটি column বা column-set যা table-এর প্রতিটি row-কে uniquely identify করে।

মূল বৈশিষ্ট্য:
- একটি table-এ একটি Primary Key থাকে।
- Primary Key `NULL` হতে পারে না।
- প্রতিটি value unique হওয়া প্রয়োজন।

### Example

```sql
CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);
```

## Foreign Key
Foreign Key হলো এমন column বা column-set যা অন্য table-এর Primary Key-কে reference করে।

মূল বৈশিষ্ট্য:
- Multiple Foreign Key থাকতে পারে।
- Foreign Key-তে duplicate value থাকতে পারে।
- Foreign Key-তে NULL value থাকতে পারে।

## Example

```text
Student table
id | name | cityId

City table
id | city_name
```

এখানে `student.cityId` হলো Foreign Key এবং `city.id` হলো referenced Primary Key।

## Practice
1. Primary Key-এর সংজ্ঞা লিখুন।
2. Foreign Key-এর সংজ্ঞা লিখুন।
3. Parent ও Child table বলতে কী বোঝায়?

## Next Lesson
`09-SQL-Constraints.md`
