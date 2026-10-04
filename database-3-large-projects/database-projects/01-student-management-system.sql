DROP DATABASE IF EXISTS student_management_project;
CREATE DATABASE student_management_project;
USE student_management_project;

CREATE TABLE departments (
 department_id INT PRIMARY KEY,
 department_name VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE teachers (
 teacher_id INT PRIMARY KEY,
 teacher_name VARCHAR(100) NOT NULL,
 phone VARCHAR(20) UNIQUE,
 department_id INT,
 salary INT DEFAULT 25000,
 FOREIGN KEY (department_id) REFERENCES departments(department_id) ON UPDATE CASCADE ON DELETE SET NULL
);
CREATE TABLE courses (
 course_id INT PRIMARY KEY,
 course_name VARCHAR(100) NOT NULL,
 fee DECIMAL(10,2) DEFAULT 0,
 teacher_id INT,
 FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id) ON UPDATE CASCADE ON DELETE SET NULL
);
CREATE TABLE cities (
 city_id INT PRIMARY KEY,
 city_name VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE students (
 student_id INT PRIMARY KEY,
 student_name VARCHAR(100) NOT NULL,
 email VARCHAR(120) UNIQUE,
 phone VARCHAR(20),
 gender VARCHAR(10) CHECK (gender IN ('Male','Female')),
 age INT CHECK (age >= 10),
 city_id INT,
 admission_date DATE,
 FOREIGN KEY (city_id) REFERENCES cities(city_id) ON UPDATE CASCADE ON DELETE SET NULL
);
CREATE TABLE enrollments (
 enrollment_id INT PRIMARY KEY,
 student_id INT NOT NULL,
 course_id INT NOT NULL,
 enrollment_date DATE NOT NULL,
 status VARCHAR(20) DEFAULT 'Active',
 FOREIGN KEY (student_id) REFERENCES students(student_id) ON UPDATE CASCADE ON DELETE CASCADE,
 FOREIGN KEY (course_id) REFERENCES courses(course_id) ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE results (
 result_id INT PRIMARY KEY,
 student_id INT NOT NULL,
 course_id INT NOT NULL,
 marks INT CHECK (marks BETWEEN 0 AND 100),
 exam_date DATE,
 FOREIGN KEY (student_id) REFERENCES students(student_id) ON UPDATE CASCADE ON DELETE CASCADE,
 FOREIGN KEY (course_id) REFERENCES courses(course_id) ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE payments (
 payment_id INT PRIMARY KEY,
 student_id INT NOT NULL,
 amount DECIMAL(10,2) NOT NULL,
 payment_date DATE NOT NULL,
 payment_status VARCHAR(20) DEFAULT 'Paid',
 FOREIGN KEY (student_id) REFERENCES students(student_id) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO departments VALUES
(1,'Computer Science'),(2,'Business Studies'),(3,'English'),(4,'Science');
INSERT INTO cities VALUES
(1,'Feni'),(2,'Dhaka'),(3,'Chattogram'),(4,'Cumilla'),(5,'Noakhali'),(6,'Rajshahi');
INSERT INTO teachers VALUES
(101,'Md. Rahman','01811111111',1,35000),(102,'Nusrat Jahan','01822222222',1,32000),(103,'Karim Ahmed','01833333333',2,30000),(104,'Sadia Islam','01844444444',3,28000),(105,'Hasan Mahmud','01855555555',4,33000);
INSERT INTO courses VALUES
(201,'Database Fundamentals',5000,101),(202,'Web Development',7000,102),(203,'Computer Office Application',4000,101),(204,'Business Management',6000,103),(205,'English Communication',4500,104),(206,'Basic Science',5000,105);
INSERT INTO students VALUES
(1001,'Rahim Ahmed','rahim@example.com','01710000001','Male',20,1,'2026-01-05'),
(1002,'Karim Hasan','karim@example.com','01710000002','Male',21,2,'2026-01-08'),
(1003,'Nadia Akter','nadia@example.com','01710000003','Female',19,1,'2026-01-10'),
(1004,'Sadia Rahman','sadia@example.com','01710000004','Female',22,3,'2026-01-12'),
(1005,'Hasan Ali','hasan@example.com','01710000005','Male',20,4,'2026-01-15'),
(1006,'Mim Akter','mim@example.com','01710000006','Female',18,2,'2026-01-18'),
(1007,'Tanvir Hossain','tanvir@example.com','01710000007','Male',23,5,'2026-01-20'),
(1008,'Fahim Chowdhury','fahim@example.com','01710000008','Male',21,6,'2026-01-22'),
(1009,'Jannat Ara','jannat@example.com','01710000009','Female',20,1,'2026-01-25'),
(1010,'Rafi Islam','rafi@example.com','01710000010','Male',19,3,'2026-01-28'),
(1011,'Mahi Sultana','mahi@example.com','01710000011','Female',22,4,'2026-02-01'),
(1012,'Siam Ahmed','siam@example.com','01710000012','Male',20,5,'2026-02-03');
INSERT INTO enrollments VALUES
(1,1001,201,'2026-01-06','Active'),(2,1001,203,'2026-01-07','Active'),(3,1002,201,'2026-01-09','Active'),(4,1002,202,'2026-01-10','Active'),(5,1003,201,'2026-01-11','Active'),(6,1003,205,'2026-01-12','Active'),(7,1004,202,'2026-01-13','Active'),(8,1004,205,'2026-01-14','Active'),(9,1005,204,'2026-01-16','Active'),(10,1006,203,'2026-01-19','Active'),(11,1007,206,'2026-01-21','Active'),(12,1008,202,'2026-01-23','Active'),(13,1009,201,'2026-01-26','Active'),(14,1010,203,'2026-01-29','Active'),(15,1011,204,'2026-02-02','Active'),(16,1012,206,'2026-02-04','Active');
INSERT INTO results VALUES
(1,1001,201,88,'2026-03-01'),(2,1001,203,92,'2026-03-02'),(3,1002,201,95,'2026-03-01'),(4,1002,202,84,'2026-03-03'),(5,1003,201,76,'2026-03-01'),(6,1003,205,90,'2026-03-04'),(7,1004,202,91,'2026-03-03'),(8,1004,205,87,'2026-03-04'),(9,1005,204,68,'2026-03-05'),(10,1006,203,82,'2026-03-02'),(11,1007,206,74,'2026-03-06'),(12,1008,202,79,'2026-03-03'),(13,1009,201,93,'2026-03-01'),(14,1010,203,71,'2026-03-02'),(15,1011,204,89,'2026-03-05'),(16,1012,206,81,'2026-03-06');
INSERT INTO payments VALUES
(1,1001,5000,'2026-01-06','Paid'),(2,1001,4000,'2026-01-07','Paid'),(3,1002,5000,'2026-01-09','Paid'),(4,1002,7000,'2026-01-10','Paid'),(5,1003,5000,'2026-01-11','Paid'),(6,1003,4500,'2026-01-12','Paid'),(7,1004,7000,'2026-01-13','Paid'),(8,1005,6000,'2026-01-16','Paid'),(9,1006,4000,'2026-01-19','Paid'),(10,1007,5000,'2026-01-21','Paid'),(11,1008,7000,'2026-01-23','Paid'),(12,1009,5000,'2026-01-26','Paid'),(13,1010,4000,'2026-01-29','Paid'),(14,1011,6000,'2026-02-02','Paid'),(15,1012,5000,'2026-02-04','Paid');

-- BASIC QUERIES
SELECT * FROM students;
SELECT student_name,email,age FROM students;
SELECT * FROM students WHERE age >= 20;
SELECT * FROM students WHERE city_id IN (1,2,3);
SELECT * FROM students WHERE age BETWEEN 18 AND 21;
SELECT * FROM students ORDER BY student_name ASC;
SELECT * FROM students ORDER BY age DESC LIMIT 5;

-- AGGREGATES
SELECT COUNT(*) AS total_students FROM students;
SELECT MAX(marks) AS highest_marks FROM results;
SELECT MIN(marks) AS lowest_marks FROM results;
SELECT SUM(amount) AS total_collection FROM payments;
SELECT AVG(marks) AS average_marks FROM results;

-- GROUP BY / HAVING
SELECT city_id,COUNT(*) AS total_students FROM students GROUP BY city_id;
SELECT course_id,COUNT(*) AS enrolled_students FROM enrollments GROUP BY course_id;
SELECT course_id,AVG(marks) AS average_marks FROM results GROUP BY course_id;
SELECT course_id,COUNT(*) AS result_count FROM results GROUP BY course_id HAVING AVG(marks)>=80;

-- JOINS
SELECT s.student_id,s.student_name,c.course_name FROM students s JOIN enrollments e ON s.student_id=e.student_id JOIN courses c ON e.course_id=c.course_id;
SELECT s.student_id,s.student_name,p.amount FROM students s LEFT JOIN payments p ON s.student_id=p.student_id;

-- SUBQUERIES
SELECT student_name FROM students WHERE student_id IN (SELECT student_id FROM results WHERE marks>(SELECT AVG(marks) FROM results));
SELECT student_name FROM students WHERE student_id IN (SELECT student_id FROM results WHERE marks=(SELECT MAX(marks) FROM results));
SELECT student_name,student_id FROM students WHERE student_id IN (SELECT student_id FROM students WHERE student_id%2=0);

-- UNION
SELECT student_name AS person_name FROM students WHERE gender='Male'
UNION
SELECT student_name AS person_name FROM students WHERE gender='Female';

-- VIEW
DROP VIEW IF EXISTS student_details;
CREATE VIEW student_details AS
SELECT s.student_id,s.student_name,s.email,city.city_name,c.course_name,r.marks
FROM students s
LEFT JOIN cities city ON s.city_id=city.city_id
LEFT JOIN enrollments e ON s.student_id=e.student_id
LEFT JOIN courses c ON e.course_id=c.course_id
LEFT JOIN results r ON s.student_id=r.student_id AND e.course_id=r.course_id;
SELECT * FROM student_details;

-- REPORTS
SELECT s.student_name,MAX(r.marks) AS highest_marks FROM students s JOIN results r ON s.student_id=r.student_id GROUP BY s.student_id,s.student_name ORDER BY highest_marks DESC LIMIT 5;
SELECT city.city_name,AVG(r.marks) AS average_marks FROM students s JOIN cities city ON s.city_id=city.city_id JOIN results r ON s.student_id=r.student_id GROUP BY city.city_id,city.city_name ORDER BY average_marks DESC;
SELECT c.course_name,SUM(c.fee) AS expected_revenue FROM courses c JOIN enrollments e ON c.course_id=e.course_id GROUP BY c.course_id,c.course_name ORDER BY expected_revenue DESC;

-- ALTER / UPDATE / DELETE PRACTICE
ALTER TABLE students ADD COLUMN blood_group VARCHAR(5);
UPDATE students SET phone='01999999999' WHERE student_id=1012;
-- DELETE FROM students WHERE student_id=1012;

-- FINAL CHALLENGES
-- 1. Find students above the overall average marks.
-- 2. Find course-wise highest marks.
-- 3. Find city-wise student count.
-- 4. Find students with no payment record using LEFT JOIN.
-- 5. Create a view containing student, course, city and marks.
