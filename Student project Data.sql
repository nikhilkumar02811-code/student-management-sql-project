CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender VARCHAR(10),
    DateOfBirth DATE,
    Email VARCHAR(100),
    Phone VARCHAR(15),
    DepartmentID INT
)

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
)

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Credits INT,
    DepartmentID INT
)

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    Semester VARCHAR(10),
    Grade VARCHAR(2)
)

CREATE TABLE Instructors (
    InstructorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    DepartmentID INT
)

CREATE TABLE CourseAssignments (
    AssignmentID INT PRIMARY KEY,
    InstructorID INT,
    CourseID INT,
    Semester VARCHAR(10)
)

-- Departments
INSERT INTO Departments VALUES (1, 'Computer Science'), (2, 'Mathematics'), (3, 'Physics');

-- Students
INSERT INTO Students VALUES
(1, 'Alice', 'Smith', 'Female', '2002-03-15', 'alice@example.com', '1234567890', 1),
(2, 'Bob', 'Johnson', 'Male', '2001-06-20', 'bob@example.com', '9876543210', 2),
(3, 'Charlie', 'Lee', 'Male', '2003-01-10', 'charlie@example.com', '5556667777', 1);

-- Instructors
INSERT INTO Instructors VALUES
(1, 'Dr.', 'Brown', 'brown@example.com', '3334445555', 1),
(2, 'Dr.', 'Green', 'green@example.com', '2223334444', 2);

-- Courses
INSERT INTO Courses VALUES
(101, 'Database Systems', 4, 1),
(102, 'Calculus', 3, 2),
(103, 'Algorithms', 4, 1),
(104, 'Physics I', 3, 3);

-- Enrollments
INSERT INTO Enrollments VALUES
(1, 1, 101, 'Fall2023', 'A'),
(2, 1, 103, 'Fall2023', 'B'),
(3, 2, 102, 'Fall2023', 'A'),
(4, 3, 101, 'Fall2023', 'C');

-- CourseAssignments
INSERT INTO CourseAssignments VALUES
(1, 1, 101, 'Fall2023'),
(2, 1, 103, 'Fall2023'),
(3, 2, 102, 'Fall2023');







