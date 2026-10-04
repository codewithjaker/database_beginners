USE student_management;

SELECT city_id, COUNT(*) AS total_students
FROM student
GROUP BY city_id;

SELECT city_id, AVG(marks) AS average_marks
FROM student
GROUP BY city_id;

SELECT city_id, COUNT(*) AS total_students
FROM student
GROUP BY city_id
HAVING MAX(marks) > 90;
