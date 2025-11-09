//Select specific column
SELECT first_name, grade FROM students;

//Filter with WHERE
SELECT * FROM students WHERE grade = 'A';

//Comparison Operators
SELECT * FROM students WHERE age > 13;

//Combine Operators
SELECT * FROM students WHERE grade = 'A' AND age < 15;

//IN & BETWEEN
SELECT * FROM students WHERE grade IN ('A', 'B');
SELECT * FROM students WHERE age BETWEEN 13 AND 14;

//Pattern Matching
SELECT * FROM students WHERE first_name LIKE 'A%';

//Sorting
SELECT * FROM students ORDER BY age ASC;
SELECT * FROM students ORDER BY grade DESC;

