-- Insert 50 students
INSERT INTO Students (FirstName, LastName, DateOfBirth, Gender, GradeLevel, Address, ContactNumber)
VALUES 
('Alice', 'Smith', '2010-05-12', 'Female', 5, '123 Maple St', '1234567890'),
('Bob', 'Johnson', '2009-08-23', 'Male', 6, '456 Oak Ave', '9876543210'),
('Charlie', 'Brown', '2011-01-14', 'Male', 4, '789 Pine Rd', '6543219870'),
('Daisy', 'Taylor', '2010-11-05', 'Female', 5, '321 Cedar Ln', '8765432109'),
('Ethan', 'White', '2009-03-19', 'Male', 6, '654 Birch Blvd', '5432198760'),
('Fiona', 'Green', '2011-02-12', 'Female', 4, '987 Willow Way', '1237894560'),
('George', 'Harris', '2010-07-25', 'Male', 5, '654 Pine Ave', '7896541230'),
('Hannah', 'Young', '2009-10-05', 'Female', 6, '321 Oak Blvd', '9873216540'),
('Ian', 'Walker', '2011-03-17', 'Male', 4, '213 Birch Lane', '4569871230'),
('Jade', 'King', '2010-12-22', 'Female', 5, '741 Maple Rd', '1236549870'),
('Kyle', 'Anderson', '2009-04-11', 'Male', 6, '852 Cedar Ave', '7891234567'),
('Laura', 'Martinez', '2011-06-15', 'Female', 4, '369 Birch Blvd', '1472583690'),
('Mason', 'Taylor', '2010-09-07', 'Male', 5, '741 Maple Rd', '9638527410'),
('Natalie', 'Moore', '2009-11-19', 'Female', 6, '951 Pine St', '1237896540'),
('Oliver', 'Brown', '2011-08-21', 'Male', 4, '123 Oak Ln', '8529631470'),
('Penelope', 'Clark', '2010-02-28', 'Female', 5, '654 Birch Blvd', '7531594862'),
('Quentin', 'Lewis', '2009-12-10', 'Male', 6, '369 Cedar Ave', '3214569870'),
('Rachel', 'Hall', '2011-03-05', 'Female', 4, '987 Maple Rd', '1597534862'),
('Samuel', 'Lopez', '2010-07-17', 'Male', 5, '213 Oak Blvd', '7896541230'),
('Taylor', 'Young', '2009-05-23', 'Female', 6, '951 Birch Lane', '4567891230'),
('Uma', 'Evans', '2011-04-13', 'Female', 4, '852 Pine Rd', '3219876540'),
('Victor', 'Adams', '2010-10-25', 'Male', 5, '123 Cedar St', '6541237890'),
('Wendy', 'Hughes', '2009-06-18', 'Female', 6, '369 Maple Blvd', '9876541230'),
('Xander', 'King', '2011-09-14', 'Male', 4, '951 Oak Ave', '7539514862'),
('Yvonne', 'Scott', '2010-03-26', 'Female', 5, '213 Birch Blvd', '1594867532'),
('Zachary', 'Hill', '2009-01-09', 'Male', 6, '456 Maple Rd', '9873216540'),
('Aaron', 'Mitchell', '2011-05-29', 'Male', 4, '741 Oak St', '7891236540'),
('Bella', 'Carter', '2010-06-30', 'Female', 5, '321 Cedar Ln', '4567893210'),
('Caleb', 'Parker', '2009-02-15', 'Male', 6, '654 Pine Blvd', '1234567890'),
('Diana', 'Murphy', '2011-07-12', 'Female', 4, '987 Birch Ave', '4561237890'),
('Eli', 'Bailey', '2010-11-08', 'Male', 5, '213 Maple Blvd', '7896541230'),
('Faye', 'Reed', '2009-04-22', 'Female', 6, '852 Cedar St', '1597534862'),
('Gavin', 'Ward', '2011-02-09', 'Male', 4, '654 Oak Rd', '3216549870'),
('Harper', 'Nelson', '2010-08-03', 'Female', 5, '369 Birch Ln', '7531594862'),
('Ivy', 'Cook', '2009-12-31', 'Female', 6, '951 Maple St', '1594867530'),
('Jacob', 'Bell', '2011-03-20', 'Male', 4, '213 Cedar Ave', '4569871230'),
('Kayla', 'Gray', '2010-07-18', 'Female', 5, '654 Pine Blvd', '3219876540'),
('Liam', 'Sanders', '2009-09-25', 'Male', 6, '987 Oak Rd', '7891234567'),
('Mia', 'Peterson', '2011-01-16', 'Female', 4, '456 Maple St', '6543219870'),
('Noah', 'Garcia', '2010-05-11', 'Male', 5, '852 Birch Lane', '7539514862'),
('Olivia', 'James', '2009-03-28', 'Female', 6, '369 Pine Ave', '1597534862'),
('Parker', 'Bryant', '2011-06-08', 'Male', 4, '123 Cedar Blvd', '3216549870'),
('Quincy', 'Hayes', '2010-09-22', 'Male', 5, '741 Maple Ln', '4567891230'),
('Ruby', 'Long', '2009-11-04', 'Female', 6, '213 Pine Blvd', '7896541230'),
('Sophie', 'Brooks', '2011-02-24', 'Female', 4, '951 Cedar Rd', '1594867530'),
('Tyler', 'Watson', '2010-10-18', 'Male', 5, '369 Birch St', '7531594862'),
('Ursula', 'Morris', '2009-06-09', 'Female', 6, '852 Maple Ave', '3219876540'),
('Victor', 'Cox', '2011-04-07', 'Male', 4, '654 Oak Ln', '1234567890'),
('Willow', 'Foster', '2010-12-27', 'Female', 5, '987 Cedar Blvd', '7891236540');





-- Insert 5 teachers
INSERT INTO Teachers (FirstName, LastName, DateOfBirth, Gender, SubjectSpecialization, ContactNumber, Email)
VALUES 
('John', 'Doe', '1980-04-15', 'Male', 'Mathematics', '5551234567', 'john.doe@example.com'),
('Mary', 'Brown', '1985-07-20', 'Female', 'Science', '5559876543', 'mary.brown@example.com'),
('James', 'Williams', '1975-09-10', 'Male', 'History', '5552345678', 'james.williams@example.com'),
('Emily', 'Davis', '1990-02-25', 'Female', 'English', '5558765432', 'emily.davis@example.com'),
('Michael', 'Clark', '1988-12-30', 'Male', 'Physical Education', '5555678901', 'michael.clark@example.com');

-- Insert 3 classes
INSERT INTO Classes (ClassName, GradeLevel, TeacherID)
VALUES 
('5A', 5, 1), 
('6B', 6, 2), 
('4C', 4, 3);

-- Insert 7 subjects
INSERT INTO Subjects (SubjectName, ClassID)
VALUES 
('Mathematics', 1), 
('Science', 1), 
('English', 2), 
('History', 2), 
('Physical Education', 3),
('Art', 3),
('Music', 3);


-- Insert 50 enrollment records
INSERT INTO Enrollments (StudentID, ClassID, EnrollmentDate)
VALUES
(1, 1, '2024-01-15'),  -- Student 1 enrolled in Class 5A
(2, 1, '2024-01-15'),  -- Student 2 enrolled in Class 5A
(3, 2, '2024-01-15'),  -- Student 3 enrolled in Class 6B
(4, 2, '2024-01-15'),  -- Student 4 enrolled in Class 6B
(5, 3, '2024-01-15'),  -- Student 5 enrolled in Class 4C
(6, 3, '2024-01-15'),  -- Student 6 enrolled in Class 4C
(7, 1, '2024-01-15'),  -- Student 7 enrolled in Class 5A
(8, 1, '2024-01-15'),  -- Student 8 enrolled in Class 5A
(9, 2, '2024-01-15'),  -- Student 9 enrolled in Class 6B
(10, 2, '2024-01-15'), -- Student 10 enrolled in Class 6B
(11, 3, '2024-01-15'), -- Student 11 enrolled in Class 4C
(12, 3, '2024-01-15'), -- Student 12 enrolled in Class 4C
(13, 1, '2024-01-15'), -- Student 13 enrolled in Class 5A
(14, 1, '2024-01-15'), -- Student 14 enrolled in Class 5A
(15, 2, '2024-01-15'), -- Student 15 enrolled in Class 6B
(16, 2, '2024-01-15'), -- Student 16 enrolled in Class 6B
(17, 3, '2024-01-15'), -- Student 17 enrolled in Class 4C
(18, 3, '2024-01-15'), -- Student 18 enrolled in Class 4C
(19, 1, '2024-01-15'), -- Student 19 enrolled in Class 5A
(20, 1, '2024-01-15'), -- Student 20 enrolled in Class 5A
(21, 2, '2024-01-15'), -- Student 21 enrolled in Class 6B
(22, 2, '2024-01-15'), -- Student 22 enrolled in Class 6B
(23, 3, '2024-01-15'), -- Student 23 enrolled in Class 4C
(24, 3, '2024-01-15'), -- Student 24 enrolled in Class 4C
(25, 1, '2024-01-15'), -- Student 25 enrolled in Class 5A
(26, 1, '2024-01-15'), -- Student 26 enrolled in Class 5A
(27, 2, '2024-01-15'), -- Student 27 enrolled in Class 6B
(28, 2, '2024-01-15'), -- Student 28 enrolled in Class 6B
(29, 3, '2024-01-15'), -- Student 29 enrolled in Class 4C
(30, 3, '2024-01-15'), -- Student 30 enrolled in Class 4C
(31, 1, '2024-01-15'), -- Student 31 enrolled in Class 5A
(32, 1, '2024-01-15'), -- Student 32 enrolled in Class 5A
(33, 2, '2024-01-15'), -- Student 33 enrolled in Class 6B
(34, 2, '2024-01-15'), -- Student 34 enrolled in Class 6B
(35, 3, '2024-01-15'), -- Student 35 enrolled in Class 4C
(36, 3, '2024-01-15'), -- Student 36 enrolled in Class 4C
(37, 1, '2024-01-15'), -- Student 37 enrolled in Class 5A
(38, 1, '2024-01-15'), -- Student 38 enrolled in Class 5A
(39, 2, '2024-01-15'), -- Student 39 enrolled in Class 6B
(40, 2, '2024-01-15'), -- Student 40 enrolled in Class 6B
(41, 3, '2024-01-15'), -- Student 41 enrolled in Class 4C
(42, 3, '2024-01-15'), -- Student 42 enrolled in Class 4C
(43, 1, '2024-01-15'), -- Student 43 enrolled in Class 5A
(44, 1, '2024-01-15'), -- Student 44 enrolled in Class 5A
(45, 2, '2024-01-15'), -- Student 45 enrolled in Class 6B
(46, 2, '2024-01-15'), -- Student 46 enrolled in Class 6B
(47, 3, '2024-01-15'), -- Student 47 enrolled in Class 4C
(48, 3, '2024-01-15'), -- Student 48 enrolled in Class 4C
(49, 1, '2024-01-15'); --student 49 enrolled in Class 5A

