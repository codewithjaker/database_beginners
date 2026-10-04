USE student_management;

-- Students who scored above class average
SELECT name, marks
FROM student
WHERE marks > (
    SELECT AVG(marks)
    FROM student
);

-- Students with even student IDs
SELECT name, student_id
FROM student
WHERE student_id IN (
    SELECT student_id
    FROM student
    WHERE student_id % 2 = 0
);
