CREATE DATABASE StudentDB;

USE StudentDB;

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    grade CHAR(2)
);

INSERT INTO students (first_name, last_name, age, grade)
VALUES
('Alice', 'Muthoni', 14, 'A'),
('Brian', 'Kamau', 13, 'B'),
('Carol', 'Wanjiku', 15, 'A'),
('David', 'Otieno', 14, 'C');


CREATE TABLE teachers (
    teacher_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    subject VARCHAR(50) NOT NULL,
    years_of_experience INT NOT NULL
);

INSERT INTO teachers (teacher_id, name, subject, years_of_experience) VALUES
(1, 'Mr. Karanja', 'Math', 10),
(2, 'Ms. Achieng', 'English', 6),
(3, 'Mr. Ouma', 'Science', 8);


CREATE TABLE student_teacher (
    student_id INT,
    teacher_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);

INSERT INTO student_teacher (student_id, teacher_id) VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 3);
