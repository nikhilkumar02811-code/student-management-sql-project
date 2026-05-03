

----------------------------Student Management System---------------------------------------------

--List of all student

select*from Students

--Get names of students in the Computer Science department
select FirstName,LastName from Students
where DepartmentId= (select DepartmentId from Departments where DepartmentName='Computer Science')

--Show all courses with their department names
select C.CourseName,D.DepartmentName
from Courses C
join Departments D
on C.DepartmentId=D.DepartmentId


--Aggregate Functions

--Count of students per department

select D.DepartmentName, count(*) as StudentCount
from Students S
join Departments D
on S.DepartmentId=D.DepartmentId
Group by D.DepartmentName


--Average grade per course (assuming letter grades are mapped to numbers)

select CourseID,
   AVG(CASE Grade
       when 'A' then 4
       when 'B' then 3
       when 'C' then 2
       when 'd' then 1
       else 0 end) as GPA
from Enrollments
group by CourseID


--Joins and Relationships

--List students with their enrolled courses

select S.FirstName, S.LastName, C.CourseName,E.Semester
from Students S
join Enrollments E
on S.StudentID = E.StudentID
join Courses C
on C.CourseID = E.CourseID


--List instructors with the courses they teach

select I.FirstName, I.LastName, C.CourseName, CA.Semester
from Instructors I
join CourseAssignments CA on I.InstructorID = CA.InstructorID
join Courses C on C.CourseID = CA.CourseID


--Subqueries

--Find students who got an A grade

select FirstName,LastName from Students
where StudentID in(
    select StudentID from Enrollments where Grade='A'
)

--List courses not taken by any student

select CourseName from Courses
where CourseID not in(select CourseID from Enrollments)


--Date Functions  


--List students born after 2002

select*from Students 
where DateOfBirth > '2002'


--DML Queries
--Update phone number of a student

update Students set Phone = 987654321 
where StudentID = 1



--Delete a student enrollment record

Delete from Enrollments 
Where EnrollmentID = 1

-- Constraints & Data Integrity (as questions)
--How to ensure email is unique in the Students table?

alter table Students
add Constraint Unique_Email Unique(Email)

--Add a new column for address in the Students table

alter table Students
add address varchar(250)

select* from Students