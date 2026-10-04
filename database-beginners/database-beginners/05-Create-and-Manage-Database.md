# 05 — Create & Manage Database

## Database তৈরি

```sql
CREATE DATABASE db_name;
```

### নিরাপদভাবে তৈরি

```sql
CREATE DATABASE IF NOT EXISTS db_name;
```

## Database মুছে ফেলা

```sql
DROP DATABASE db_name;
```

```sql
DROP DATABASE IF EXISTS db_name;
```

## Database দেখা

```sql
SHOW DATABASES;
```

## Table দেখা

```sql
SHOW TABLES;
```

## Example

```sql
CREATE DATABASE college;
SHOW DATABASES;
```

## Practice
1. `school` নামে database তৈরি করুন।
2. সব database দেখান।
3. `school` database delete করার query লিখুন।

## Next Lesson
`06-Create-Table-and-Data-Types.md`
