-- Tables
USE student_management;

CREATE TABLE city (
    id INT PRIMARY KEY,
    city_name VARCHAR(50) NOT NULL
);

CREATE TABLE course (
    id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL
);

CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    marks INT NOT NULL,
    grade VARCHAR(1),
    city_id INT,
    course_id INT,
    FOREIGN KEY (city_id) REFERENCES city(id),
    FOREIGN KEY (course_id) REFERENCES course(id)
);
