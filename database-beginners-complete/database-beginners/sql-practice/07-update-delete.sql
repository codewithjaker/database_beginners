USE student_management;

UPDATE student
SET grade = 'A'
WHERE marks >= 90;

-- Practice DELETE carefully; uncomment after checking:
-- DELETE FROM student WHERE marks < 70;
