-- Update the GradeLevel of student with StudentID = 5
UPDATE Students
SET GradeLevel = 7
WHERE StudentID = 5;
-- Explanation:
-- This updates the "GradeLevel" of the student whose "StudentID" is 5 to 7.
-- The WHERE clause ensures that only the student with ID 5 is updated.


-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Update multiple columns for a student with StudentID = 3
UPDATE Students
SET GradeLevel = 6, Address = '123 New Street', ContactNumber = '1112223333'
WHERE StudentID = 3;
-- Explanation:
-- This updates the "GradeLevel", "Address", and "ContactNumber" for the student with "StudentID" 3.
-- The WHERE clause ensures that only the student with ID 3 is updated.


-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Update all female students in GradeLevel 5
UPDATE Students
SET GradeLevel = 6
WHERE GradeLevel = 5 AND Gender = 'Female';
-- Explanation:
-- This updates the "GradeLevel" of all female students in GradeLevel 5 to 6.
-- The WHERE clause checks for both conditions: GradeLevel = 5 and Gender = 'Female'.


-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Update the contact number for all students
UPDATE Students
SET ContactNumber = '0000000000';
-- Explanation:
-- This updates the "ContactNumber" for every student in the "Students" table to '0000000000'.
-- No WHERE clause is specified, so all records are updated.

-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Update the GradeLevel of students based on their enrollment in a class
UPDATE Students
SET GradeLevel = (SELECT ClassLevel FROM Classes WHERE Classes.ClassID = Enrollments.ClassID)
WHERE StudentID IN (SELECT StudentID FROM Enrollments WHERE ClassID = 1);
-- Explanation:
-- This updates the "GradeLevel" of students who are enrolled in ClassID 1, setting it to the corresponding "ClassLevel" from the "Classes" table.
-- The subquery retrieves the "ClassLevel" for the specified class.



-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Update students' GradeLevel based on their enrollment in a specific class
UPDATE Students
SET GradeLevel = 7
FROM Students
INNER JOIN Enrollments ON Students.StudentID = Enrollments.StudentID
WHERE Enrollments.ClassID = 2;
-- Explanation:
-- This updates the "GradeLevel" to 7 for all students enrolled in ClassID 2 by joining the "Students" and "Enrollments" tables.


-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Increase the GradeLevel by 1 for all students
UPDATE Students
SET GradeLevel = GradeLevel + 1;
-- Explanation:
-- This updates the "GradeLevel" for every student in the "Students" table by increasing it by 1.



-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Update GradeLevel based on conditions using CASE
UPDATE Students
SET GradeLevel = CASE
                    WHEN GradeLevel = 5 THEN 6
                    WHEN GradeLevel = 6 THEN 7
                    ELSE GradeLevel
                 END
WHERE GradeLevel IN (5, 6);
-- Explanation:
-- This updates the "GradeLevel" based on specific conditions. If the current "GradeLevel" is 5, it is set to 6; if it's 6, it's set to 7.
-- The ELSE clause ensures that students in other grade levels remain unaffected.


-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Update contact number for students after a certain date
UPDATE Students
SET ContactNumber = '1234567890'
WHERE DateOfBirth > '2010-01-01';
-- Explanation:
-- This updates the "ContactNumber" for all students whose "DateOfBirth" is after '2010-01-01'.


-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Update only the first 5 students' GradeLevel
UPDATE Students
SET GradeLevel = 6
ORDER BY StudentID
LIMIT 5;
-- Explanation:
-- This updates the "GradeLevel" of only the first 5 students, based on the "StudentID" in ascending order.

-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- SQL Server: Update only the first 5 students' GradeLevel
UPDATE TOP (5) Students
SET GradeLevel = 6
ORDER BY StudentID;
