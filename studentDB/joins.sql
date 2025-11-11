//INNER JOIN
SELECT s.first_name, s.grade, t.name AS teacher_name, t.subject
FROM students s
INNER JOIN student_teacher st ON s.student_id = st.student_id
INNER JOIN teachers t ON st.teacher_id = t.teacher_id;

//LEFT JOIN
SELECT s.first_name, t.name AS teacher_name
FROM students s
LEFT JOIN student_teacher st ON s.student_id = st.student_id
LEFT JOIN teachers t ON st.teacher_id = t.teacher_id;


//RIGHT JOIN
SELECT s.first_name, t.name AS teacher_name
FROM students s
RIGHT JOIN student_teacher st ON s.student_id = st.student_id
RIGHT JOIN teachers t ON st.teacher_id = t.teacher_id;

//CROSS JOIN
SELECT s.first_name, t.name
FROM students s
CROSS JOIN teachers t;

