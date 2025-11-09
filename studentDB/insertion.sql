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

SELECT * FROM students;
