-- Get student details along with their enrolled class names
SELECT 
    Students.FirstName AS StudentFirstName,
    Students.LastName AS StudentLastName,
    Classes.ClassName AS EnrolledClass
FROM 
    Students
JOIN 
    Enrollments ON Students.StudentID = Enrollments.StudentID
JOIN 
    Classes ON Enrollments.ClassID = Classes.ClassID;
-- Explanation:
-- This query joins the "Students", "Enrollments", and "Classes" tables to get a list of students along with the classes they are enrolled in.





-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Get student names and the teachers of their enrolled classes
SELECT 
    Students.FirstName AS StudentFirstName,
    Students.LastName AS StudentLastName,
    Teachers.FirstName AS TeacherFirstName,
    Teachers.LastName AS TeacherLastName
FROM 
    Students
JOIN 
    Enrollments ON Students.StudentID = Enrollments.StudentID
JOIN 
    Classes ON Enrollments.ClassID = Classes.ClassID
JOIN 
    Teachers ON Classes.TeacherID = Teachers.TeacherID;
-- Explanation:
-- This query joins the "Students", "Enrollments", "Classes", and "Teachers" tables to fetch a list of students along with the teachers for each class they are enrolled in.




-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Get teacher details along with the subjects they teach
SELECT 
    Teachers.FirstName AS TeacherFirstName,
    Teachers.LastName AS TeacherLastName,
    Subjects.SubjectName AS SubjectTaught
FROM 
    Teachers
JOIN 
    Classes ON Teachers.TeacherID = Classes.TeacherID
JOIN 
    Subjects ON Classes.ClassID = Subjects.ClassID
-- Explanation:
-- This query joins the "Teachers", "Classes", and "Subjects" tables to list teachers and the subjects they teach, based on their assigned classes.



-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Get subject details, including class name and teacher's name
SELECT 
    Subjects.SubjectName AS SubjectName,
    Classes.ClassName AS ClassName,
    Teachers.FirstName AS TeacherFirstName,
    Teachers.LastName AS TeacherLastName
FROM 
    Subjects
JOIN 
    Classes ON Subjects.ClassID = Classes.ClassID
JOIN 
    Teachers ON Classes.TeacherID = Teachers.TeacherID;

-- Explanation:
-- This query joins the "Subjects", "Classes", and "Teachers" tables to fetch each subject with the associated class and teacher information.


-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Get class names along with the students enrolled in each class
SELECT 
    Classes.ClassName AS ClassName,
    Students.FirstName AS StudentFirstName,
    Students.LastName AS StudentLastName
FROM 
    Classes
JOIN 
    Enrollments ON Classes.ClassID = Enrollments.ClassID
JOIN 
    Students ON Enrollments.StudentID = Students.StudentID;
-- Explanation:
-- This query joins the "Classes", "Enrollments", and "Students" tables to list all classes and their enrolled students.




-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Get teacher contact details and the class they teach
SELECT 
    Teachers.FirstName AS TeacherFirstName,
    Teachers.LastName AS TeacherLastName,
    Teachers.ContactNumber AS TeacherContactNumber,
    Classes.ClassName AS ClassName
FROM 
    Teachers
JOIN 
    Classes ON Teachers.TeacherID = Classes.TeacherID;
-- Explanation:
-- This query joins the "Teachers" and "Classes" tables to get the contact details of each teacher along with the class they are assigned to.




-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Get the list of classes a specific student is enrolled in
SELECT 
    Students.FirstName AS StudentFirstName,
    Students.LastName AS StudentLastName,
    Classes.ClassName AS EnrolledClass,
    Enrollments.EnrollmentDate AS EnrollmentDate
FROM 
    Students
JOIN 
    Enrollments ON Students.StudentID = Enrollments.StudentID
JOIN 
    Classes ON Enrollments.ClassID = Classes.ClassID
WHERE 
    Students.StudentID = 1;  -- Change the StudentID to get details for another student
-- Explanation:
-- This query joins the "Students", "Enrollments", and "Classes" tables to get a list of classes a specific student (with StudentID = 1 in this case) is enrolled in, along with the enrollment date.




-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Get teacher's name, subject specialization, and the class they teach
SELECT 
    Teachers.FirstName AS TeacherFirstName,
    Teachers.LastName AS TeacherLastName,
    Teachers.SubjectSpecialization AS SubjectSpecialization,
    Classes.ClassName AS ClassName
FROM 
    Teachers
JOIN 
    Classes ON Teachers.TeacherID = Classes.TeacherID;
-- Explanation:
-- This query joins the "Teachers" and "Classes" tables to list teachers, their specialization, and the class they are assigned to.




-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Get a list of students and the subjects they are enrolled in
SELECT 
    Students.FirstName AS StudentFirstName,
    Students.LastName AS StudentLastName,
    Subjects.SubjectName AS SubjectEnrolled
FROM 
    Students
JOIN 
    Enrollments ON Students.StudentID = Enrollments.StudentID
JOIN 
    Classes ON Enrollments.ClassID = Classes.ClassID
JOIN 
    Subjects ON Classes.ClassID = Subjects.ClassID;
-- Explanation:
-- This query joins the "Students", "Enrollments", "Classes", and "Subjects" tables to get the list of students and the subjects they are enrolled in.
