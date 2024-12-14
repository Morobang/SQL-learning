-- Select all students from the Students table
SELECT * FROM Students;
-- Explanation:
-- This retrieves all columns and all rows from the "Students" table.



-- Select only FirstName, LastName, and GradeLevel of students
SELECT FirstName, LastName, GradeLevel FROM Students;
-- Explanation:
-- This retrieves only the "FirstName", "LastName", and "GradeLevel" columns from the "Students" table.


-- Select all students in GradeLevel 5
SELECT * FROM Students
WHERE GradeLevel = 5;
-- Explanation:
-- This retrieves all columns for students who are in GradeLevel 5.



-- Select all female students in GradeLevel 5
SELECT * FROM Students
WHERE GradeLevel = 5 AND Gender = 'Female';
-- Explanation:
-- This retrieves all columns for students who are in GradeLevel 5 and have Gender as 'Female'.



-- Select all students ordered by LastName
SELECT * FROM Students
ORDER BY LastName;
-- Explanation:
-- This retrieves all columns and sorts the students by "LastName" in ascending order by default.
-- Use "ORDER BY LastName DESC" for descending order.
