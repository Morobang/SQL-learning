-- Delete a student with StudentID = 5
DELETE FROM Students
WHERE StudentID = 5;
-- Explanation:
-- This deletes the student whose ID is 5 from the "Students" table.


-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Delete all students in GradeLevel 4
DELETE FROM Students
WHERE GradeLevel = 4;
-- Explanation:
-- This removes all students in the "Students" table who are in GradeLevel 4.


-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Delete all students from the Students table
DELETE FROM Students;
-- Explanation:
-- This removes all rows from the "Students" table.
-- Use with caution as it will clear all student data.


-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Delete students who are not enrolled in any class
DELETE FROM Students
WHERE StudentID NOT IN (
    SELECT StudentID
    FROM Enrollments
);
-- Explanation:
-- This removes students from the "Students" table whose IDs are not found in the "Enrollments" table.


-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Delete duplicate records from the Students table, keeping the first one
DELETE FROM Students
WHERE StudentID NOT IN (
    SELECT MIN(StudentID)
    FROM Students
    GROUP BY FirstName, LastName, DateOfBirth
);
-- Explanation:
-- This removes duplicate student records, retaining only one row per unique combination of FirstName, LastName, and DateOfBirth.


-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Delete all students enrolled in Class 4C
DELETE FROM Students
WHERE StudentID IN (
    SELECT StudentID
    FROM Enrollments
    WHERE ClassID = 3
);
-- Explanation:
-- This deletes students from the "Students" table who are enrolled in ClassID 3 (Class 4C).
