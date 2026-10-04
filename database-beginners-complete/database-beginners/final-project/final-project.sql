-- Final Project starter queries
USE student_management;

-- Aggregate
SELECT COUNT(*) AS total_students,
       MAX(marks) AS maximum_marks,
       MIN(marks) AS minimum_marks,
       AVG(marks) AS average_marks
FROM student;

-- Join
SELECT s.name, c.course_name, city.city_name
FROM student AS s
INNER JOIN course AS c ON s.course_id = c.id
INNER JOIN city ON s.city_id = city.id;

-- View
CREATE VIEW student_details AS
SELECT s.student_id, s.name, s.marks, s.grade,
       c.course_name, city.city_name
FROM student AS s
LEFT JOIN course AS c ON s.course_id = c.id
LEFT JOIN city ON s.city_id = city.id;

SELECT * FROM student_details;
