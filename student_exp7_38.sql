CREATE TABLE student_exp7_38 ( roll_no INT PRIMARY KEY, name VARCHAR(50), physics INT,
chemistry INT, mathematics INT );
INSERT INTO student_exp7_38 (roll_no, name, physics, chemistry, mathematics)
VALUES (1, 'Jose', 20, 20, 33);
INSERT INTO student_exp7_38 (roll_no, name, physics, chemistry, mathematics)
VALUES (2, 'Bob', 18, 9, 41);
INSERT INTO student_exp7_38 (roll_no, name, physics, chemistry, mathematics)
VALUES (3, 'Edwin', 22, 7, 31);
INSERT INTO student_exp7_38 (roll_no, name, physics, chemistry, mathematics)
VALUES (4, 'Duke', 13, 21, 20);
INSERT INTO student_exp7_38 (roll_no, name, physics, chemistry, mathematics)
VALUES (5, 'Elvin', 14, 22, 23);
INSERT INTO student_exp7_38 (roll_no, name, physics, chemistry, mathematics)
VALUES (6, 'Kevin', 2, 10, 48);
INSERT INTO student_exp7_38 (roll_no, name, physics, chemistry, mathematics)
VALUES (7, 'Leo', 22, 12, 22);
INSERT INTO student_exp7_38 (roll_no, name, physics, chemistry, mathematics)
VALUES (8, 'Lakshmi', 24, 14, 31);
INSERT INTO student_exp7_38 (roll_no, name, physics, chemistry, mathematics)
VALUES (9, 'Tom', 19,15,24);
INSERT INTO student_exp7_38 (roll_no, name, physics, chemistry, mathematics)
VALUES (10, 'Jack', 8, 20, 36);
SELECT * FROM student_exp7_38;

SELECT AVG(physics) AS class_average_physics FROM student_exp7_38;

SELECT MAX(mathematics) AS highest_marks_maths FROM student_exp7_38;

SELECT MIN(chemistry) AS lowest_mark_chemistry FROM student_exp7_38;

SELECT COUNT(*) AS pass_in_physics FROM student_exp7_38 WHERE physics >= 12;

SELECT roll_no, name FROM student_exp7_38 WHERE physics >= 12 AND chemistry >= 12
AND mathematics >= 25;

SELECT roll_no, name, (physics + chemistry + mathematics) AS total_marks, CASE WHEN
physics >= 12 AND chemistry >= 12 AND mathematics >= 25 THEN 'Pass' ELSE 'Fail' END AS
status FROM student_exp7_38 ORDER BY total_marks DESC;

SELECT (COUNT(CASE WHEN mathematics >=25 THEN 1 END)*100.00/COUNT(*))AS
PASS_PERCENTAGE_MATHS FROM student_exp7_38;

SELECT (COUNT(CASE WHEN physics >= 12 AND chemistry >= 12 AND mathematics >= 25
THEN 1 END) * 100.00 / COUNT(*)) AS overall_pass_percentage FROM student_exp7_38;

SELECT AVG(physics + chemistry + mathematics) AS class_average FROM
student_exp7_38;

SELECT COUNT(*) AS total_pass FROM student_exp7_38 WHERE physics >= 12 AND
chemistry >= 12 AND mathematics >= 25;
