USE student_management;

SELECT s.student_id, s.name, c.course_name
FROM student AS s
INNER JOIN course AS c
ON s.course_id = c.id;

SELECT s.student_id, s.name, c.course_name
FROM student AS s
LEFT JOIN course AS c
ON s.course_id = c.id;

SELECT s.student_id, s.name, city.city_name
FROM student AS s
LEFT JOIN city
ON s.city_id = city.id;
