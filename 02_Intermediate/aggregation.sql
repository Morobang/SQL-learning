-- Count the total number of students in the Students table
SELECT COUNT(*) AS TotalStudents FROM Students;
-- Explanation:
-- This query counts all the rows in the "Students" table, returning the total number of students.


-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Count the number of students for each grade level
SELECT GradeLevel, COUNT(*) AS NumberOfStudents
FROM Students
GROUP BY GradeLevel;
-- Explanation:
-- This query groups the students by "GradeLevel" and counts the number of students in each grade level.


-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Sum the number of credits for all courses (assuming there's a "Credits" column in Courses)
SELECT SUM(Credits) AS TotalCredits FROM Courses;
-- Explanation:
-- This query sums up the "Credits" column in the "Courses" table to calculate the total number of credits.


-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Calculate the average grade level of all students
SELECT AVG(GradeLevel) AS AverageGradeLevel FROM Students;
-- Explanation:
-- This query calculates the average value of the "GradeLevel" column in the "Students" table.


-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Find the highest grade level in the Students table
SELECT MAX(GradeLevel) AS HighestGradeLevel FROM Students;
-- Explanation:
-- This query retrieves the highest value from the "GradeLevel" column in the "Students" table using the MAX() function.


-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Find the highest grade level in the Students table
SELECT MAX(GradeLevel) AS HighestGradeLevel FROM Students;
-- Explanation:
-- This query retrieves the highest value from the "GradeLevel" column in the "Students" table using the MAX() function.



-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Find the lowest grade level in the Students table
SELECT MIN(GradeLevel) AS LowestGradeLevel FROM Students;
-- Explanation:
-- This query retrieves the lowest value from the "GradeLevel" column in the "Students" table using the MIN() function.



-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Group students by grade level and count the number of students in each grade
SELECT GradeLevel, COUNT(*) AS NumberOfStudents
FROM Students
GROUP BY GradeLevel;
-- Explanation:
-- This query groups students by their "GradeLevel" and counts the number of students in each group.



-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Group teachers by department and calculate the average salary for each department
SELECT Department, AVG(Salary) AS AverageSalary
FROM Teachers
GROUP BY Department;
-- Explanation:
-- This query groups teachers by "Department" and calculates the average salary in each department using the AVG() function.


-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Get grade levels that have more than 5 students
SELECT GradeLevel, COUNT(*) AS NumberOfStudents
FROM Students
GROUP BY GradeLevel
HAVING COUNT(*) > 5;
-- Explanation:
-- This query groups students by "GradeLevel" and filters the results to only show grades with more than 5 students.


-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Get departments that have an average salary greater than $50,000
SELECT Department, AVG(Salary) AS AverageSalary
FROM Teachers
GROUP BY Department
HAVING AVG(Salary) > 50000;
-- Explanation:
-- This query groups teachers by "Department" and calculates the average salary in each department. It then filters to only show departments with an average salary above $50,000.



-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Get the distinct grade levels of students
SELECT DISTINCT GradeLevel FROM Students;
-- Explanation:
-- This query retrieves the unique grade levels present in the "Students" table, eliminating duplicates.



-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Calculate the total number of students, average grade level, and highest grade level
SELECT 
    COUNT(*) AS TotalStudents,
    AVG(GradeLevel) AS AverageGradeLevel,
    MAX(GradeLevel) AS HighestGradeLevel
FROM Students;
-- Explanation:
-- This query performs multiple aggregations: it counts the total number of students, calculates the average grade level, and retrieves the highest grade level in the "Students" table.



-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Count the number of students enrolled in each class
SELECT Classes.ClassName, COUNT(Enrollments.StudentID) AS NumberOfStudents
FROM Classes
LEFT JOIN Enrollments ON Classes.ClassID = Enrollments.ClassID
GROUP BY Classes.ClassName;
-- Explanation:
-- This query joins the "Classes" and "Enrollments" tables, groups by class names, and counts how many students are enrolled in each class.


-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Calculate the average grade level of students enrolled in each class
SELECT Classes.ClassName, AVG(Students.GradeLevel) AS AverageGradeLevel
FROM Enrollments
JOIN Students ON Enrollments.StudentID = Students.StudentID
JOIN Classes ON Enrollments.ClassID = Classes.ClassID
GROUP BY Classes.ClassName;
-- Explanation:
-- This query joins the "Enrollments", "Students", and "Classes" tables. It calculates the average grade level for each class by grouping the results by "ClassName".


-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Get grade levels with more than 5 students
SELECT GradeLevel, COUNT(*) AS NumberOfStudents
FROM Students
GROUP BY GradeLevel
HAVING COUNT(*) > 5;
-- Explanation:
-- This query groups students by "GradeLevel" and filters the result to only show grades with more than 5 students using the HAVING clause.


-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Sum the salaries of teachers in the "Math" department
SELECT SUM(Salary) AS TotalSalary
FROM Teachers
WHERE Department = 'Math';
-- Explanation:
-- This query sums up the salaries of all teachers in the "Math" department by applying a filter with the "WHERE" clause.
