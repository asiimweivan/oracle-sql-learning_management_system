
-- Create Instructors Table
CREATE TABLE Instructors (
    InstructorID INT PRIMARY KEY,
    InstructorName VARCHAR2(50),
    Email VARCHAR2(100)
);

-- Create Students Table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR2(50),
    Email VARCHAR2(100)
);

-- Create Courses Table (with FK referencing Instructors)
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR2(100),
    Credits INT,
    InstructorID INT,
    FOREIGN KEY (InstructorID) REFERENCES Instructors(InstructorID)
);

-- Create Enrollments Table (with FKs referencing Students and Courses)
CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

-- Inserting data into Students
INSERT INTO Students (StudentID, StudentName , Email) VALUES (001, 'Alice Uwase', 'aliceuwase@gmail.com');
INSERT INTO Students (StudentID, StudentName,  Email) VALUES (002, 'Bob Gakire', 'bobgakire@gmail.com');
INSERT INTO Students (StudentID, StudentName , Email) VALUES (003, 'Willy Hirwa', 'willyhirwa@gmail.com');
INSERT INTO Students (StudentID, StudentName , Email) VALUES (004, 'Cedrick Ashimwe', 'cedrickashimwe@gmail.com');
INSERT INTO Students (StudentID, StudentName , Email) VALUES (005, 'Judith Umwari', 'judithumwari@gmail.com');
INSERT INTO Students (StudentID, StudentName , Email) VALUES (006, 'Olivia Tuyishime', 'oliviatuyishime@gmail.com');
INSERT INTO Students (StudentID, StudentName , Email) VALUES (007, 'Deborah Kayitesi', 'judithumwari@gmail.com');
INSERT INTO Students (StudentID, StudentName , Email) VALUES (008, 'Emelyne Uwimana', 'emelyneuwimana@gmail.com');
INSERT INTO Students (StudentID, StudentName , Email) VALUES (009, 'Nissi Rusanganwa', 'nissirusanganwa@gmail.com');
INSERT INTO Students (StudentID, StudentName , Email) VALUES (010, 'Ivan Asiimwe', 'ivanasiimwe@gmail.com');
INSERT INTO Students (StudentID, StudentName , Email) VALUES (011, 'Julia Uwicyeza', 'juliauwicyeza@gmail.com');

SELECT * FROM Students;


-- Inserting data into Instructors
INSERT INTO Instructors (InstructorID, InstructorName, Email) VALUES (001, 'Dr. John BAGABO', 'smithbagabo@gmail.com.com');
INSERT INTO Instructors (InstructorID, InstructorName, Email) VALUES (002, 'Prof. Johnson RUGIRA', 'johnsonrugira@gmail.com');
INSERT INTO Instructors (InstructorID, InstructorName, Email) VALUES (003, 'Erick MANIRAGUHA', 'erickmaniraguha@gmail.com');
INSERT INTO Instructors (InstructorID, InstructorName, Email) VALUES (004, 'Prof. Emmanuel KAYIRANGA', 'emmanuelkayiranga@gmail.com');
INSERT INTO Instructors (InstructorID, InstructorName, Email) VALUES (005, 'Prof. Alexandire KARIMUNDA', 'alexandirekarimunda@gmail.com');

SELECT * FROM Instructors;

-- Inserting data into Courses
INSERT INTO Courses (CourseID, CourseName, Credits, InstructorID) VALUES (001, 'Database Systems', 3, 1); -- Taught by Dr. John Bagabo
INSERT INTO Courses (CourseID, CourseName, Credits, InstructorID) VALUES (002, 'Computer Programming', 4, 2); -- Taught by Prof. Johnson Rugira
INSERT INTO Courses (CourseID, CourseName, Credits, InstructorID) VALUES (003, 'PL/SQL', 4, 3); -- Taught by  Erick Maniraguha
INSERT INTO Courses (CourseID, CourseName, Credits, InstructorID) VALUES (004, 'Data Structure and Algorith', 4, 4); -- Taught by Prof. Emmanuel Kayiranga
INSERT INTO Courses (CourseID, CourseName, Credits, InstructorID) VALUES (005, 'Multvaluable and Calculus', 4, 5); -- Taught by Prof. Prof. Alexandire Karimunda

SELECT * FROM Courses;

-- Inserting data into Enrollments
INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID) VALUES (1, 001, 1); -- Alice Uwase enrolls in Database Systems
INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID) VALUES (2, 002, 2); -- Bob Gakire enrolls in Calculus
INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID) VALUES (3, 003, 3); -- Willy Hirwa enrolls in Calculus
INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID) VALUES (4, 004, 4); -- Cedrick Ashimwe enrolls in Calculus
INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID) VALUES (5, 005, 5); -- Judith Umwari enrolls in Calculus

UPDATE Instructors SET Email = 'johnbagabo@gmail.com'WHERE InstructorName = 'Dr. John BAGABO';

UPDATE Students SET StudentName = 'Cedrick Ashimwe Rushimwe'WHERE StudentName = 'Cedrick Ashimwe';
UPDATE Students SET StudentName = 'Alice Kelia Uwase'WHERE StudentName = 'Alice Uwase';


DELETE FROM Students WHERE StudentName = 'Julia Uwicyeza';
DELETE FROM Students WHERE StudentName = 'Judith Umwari';

SELECT * FROM Students;







