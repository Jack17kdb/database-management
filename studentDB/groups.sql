//'GROUP BY' groups rows that have the same values in specified columns

SELECT COUNT(*) AS total_students FROM students;
SELECT AVG(age) AS average_age FROM students;
SELECT MAX(age) AS oldest, MIN(age) AS youngest FROM students;

//GROUP BY grade
SELECT grade, COUNT(*) AS total_students
FROM students
GROUP BY grade;

//GROUP BY avg
SELECT grade, AVG(age) AS avg_age
FROM students
GROUP BY grade;

//Filter Groups by HALVING
SELECT grade, COUNT(*) AS total
FROM students
GROUP BY grade
HAVING total > 1;

