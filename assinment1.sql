1. Create user/schema (database)
CREATE USER CollegeDB IDENTIFIED BY password;
GRANT CONNECT, RESOURCE TO CollegeDB;

-- 2. Connect to schema
CONNECT CollegeDB/password;

-- 3. Create Student table
CREATE TABLE Student (
    RollNo NUMBER PRIMARY KEY,
    Name VARCHAR2(50),
    Dept VARCHAR2(20),
    Age NUMBER,
    Phone VARCHAR2(15)
);

-- 4. Create Course table
CREATE TABLE Course (
    CourseID NUMBER PRIMARY KEY,
    CourseName VARCHAR2(50),
    Credits NUMBER
);

-- 5. Add City column to Student
ALTER TABLE Student ADD City VARCHAR2(50);

-- 6. Add Semester column to Student
ALTER TABLE Student ADD Semester VARCHAR2(10);

-- 7. Rename Phone to MobileNo
ALTER TABLE Student RENAME COLUMN Phone TO MobileNo;

-- 8. Drop Course table
DROP TABLE Course;

-- Part B: DML

-- 9. Insert 5 students
INSERT INTO Student (RollNo, Name, Dept, Age, MobileNo, City, Semester)
VALUES (101, 'Rahul', 'CSE', 19, '1234567890', 'Delhi', '1');
INSERT INTO Student (RollNo, Name, Dept, Age, MobileNo, City, Semester)
VALUES (102, 'Sita', 'ECE', 20, '0987654321', 'Mumbai', '2');
INSERT INTO Student (RollNo, Name, Dept, Age, MobileNo, City, Semester)
VALUES (103, 'Mohan', 'CSE', 21, '1122334455', 'Chennai', '3');
INSERT INTO Student (RollNo, Name, Dept, Age, MobileNo, City, Semester)
VALUES (104, 'Priya', 'IT', 18, '5566778899', 'Kolkata', '1');
INSERT INTO Student (RollNo, Name, Dept, Age, MobileNo, City, Semester)
VALUES (105, 'Amit', 'ME', 22, '6677889900', 'Bangalore', '4');

-- 10. Display all records
SELECT * FROM Student;

-- 11. Display RollNo & Name
SELECT RollNo, Name FROM Student;

-- 12. Display CSE students
SELECT * FROM Student WHERE Dept = 'CSE';

-- 13. Display students age > 20
SELECT * FROM Student WHERE Age > 20;

-- 14. Update Dept of RollNo 101 to ECE
UPDATE Student SET Dept = 'ECE' WHERE RollNo = 101;

-- 15. Update Rahul's city to Patna
UPDATE Student SET City = 'Patna' WHERE Name = 'Rahul';

-- 16. Increase all students' age by 1
UPDATE Student SET Age = Age + 1;

-- 17. Delete RollNo 105
DELETE FROM Student WHERE RollNo = 105;

-- 18. Truncate Student table
TRUNCATE TABLE Student;

