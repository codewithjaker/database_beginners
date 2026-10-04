USE student_management;

SELECT * FROM student WHERE marks > 80;
SELECT * FROM student WHERE city_id = 1;
SELECT * FROM student WHERE marks BETWEEN 70 AND 90;
SELECT * FROM student WHERE city_id IN (1,2);
SELECT * FROM student WHERE city_id NOT IN (1,2);
SELECT * FROM student WHERE marks > 80 AND city_id = 2;
SELECT * FROM student WHERE marks > 90 OR city_id = 1;
