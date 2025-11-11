//SINGLE ROW
SELECT *
FROM students
WHERE age = (SELECT MAX(age) FROM students);

//MULTI ROW
SELECT *
FROM students
WHERE student_id IN (
    SELECT student_id
    FROM student_teacher
    WHERE teacher_id = (
        SELECT teacher_id
        FROM student_teacher
        WHERE student_id = (
            SELECT student_id FROM students WHERE first_name = 'Alice'
        )
    )
);

//IN FROM
SELECT grade, avg_age
FROM (
    SELECT grade, AVG(age) AS avg_age
    FROM students
    GROUP BY grade
) AS grade_summary
WHERE avg_age > 13.5;

