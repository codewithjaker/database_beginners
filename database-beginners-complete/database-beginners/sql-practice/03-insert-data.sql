USE student_management;

INSERT INTO city (id, city_name) VALUES
(1,'Feni'), (2,'Dhaka'), (3,'Chattogram'), (4,'Rajshahi');

INSERT INTO course (id, course_name) VALUES
(1,'Database'), (2,'Web Design'), (3,'Programming');

INSERT INTO student (student_id,name,marks,grade,city_id,course_id) VALUES
(101,'Rahim',88,'A',1,1),
(102,'Karim',95,'A',2,1),
(103,'Nadia',76,'B',1,2),
(104,'Sadia',91,'A',3,2),
(105,'Hasan',65,'C',4,3),
(106,'Mim',82,'B',2,3);
