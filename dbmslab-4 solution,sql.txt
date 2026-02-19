*Part A: Basic Data Display (Using Aliases)*

1. Display all columns from the Student table using suitable aliases for every column.
```
SELECT 
  StudentID AS Roll_No,
  Name AS Student_Name,
  DOB AS Date_of_Birth,
  Gender,
  ContactNumber AS Phone_Number,
  DeptID AS Department_ID
FROM Student;
```

2. Display only StudentID, Name, and DepartmentID from the Student table, renaming them as Roll_No, Student_Name, and Dept_ID.
```
SELECT 
  StudentID AS Roll_No,
  Name AS Student_Name,
  DeptID AS Dept_ID
FROM Student;
```

3. Display FacultyID, Name, Designation, and Email from the Faculty table using readable column names.
```
SELECT 
  FacultyID AS Faculty_ID,
  Name AS Faculty_Name,
  Designation,
  Email AS Faculty_Email
FROM Faculty;
```

4. Display all columns from the Course table with renamed column headers.
```
SELECT 
  CourseID AS Course_ID,
  CourseName AS Course_Name,
  Credits,
  DeptID AS Department_ID,
  FacultyID AS Faculty_ID
FROM Course;
```

5. Display all columns from the Enrollment table with meaningful aliases.
```
SELECT 
  StudentID AS Roll_No,
  CourseID AS Course_ID,
  Semester,
  Grade
FROM Enrollment;
```

*Part B: Conditional Data Display (WHERE Clause)*

6. Display all students whose DepartmentID is 'D101'.
```
SELECT * 
FROM Student
WHERE DeptID = 'D101';
```

7. Display all students whose Gender is 'Female'.
```
SELECT * 
FROM Student
WHERE Gender = 'Female';
```

8. Display faculty members whose Designation is 'Assistant Professor'.
```
SELECT * 
FROM Faculty
WHERE Designation = 'Assistant Professor';
```

9. Display faculty members whose DepartmentID is 'D102'.
```
SELECT * 
FROM Faculty
WHERE DeptID = 'D102';
```

10. Display courses whose Credits are greater than or equal to 4.
```
SELECT * 
FROM Course
WHERE Credits >= 4;
```

11. Display students born after 2003-01-01 using the DOB column.
```
SELECT * 
FROM Student
WHERE DOB > '2003-01-01';
```

12. Display enrollment records for students enrolled in Semester 4.
```
SELECT * 
FROM Enrollment
WHERE Semester = 4;
```

*Part C: Sorting and Limiting Results*

13. Display student records sorted by Name in ascending order.
```
SELECT * 
FROM Student
ORDER BY Name ASC;
```

14. Display student records sorted by DOB in descending order.
```
SELECT * 
FROM Student
ORDER BY DOB DESC;
```

15. Display faculty records sorted by Designation in ascending order.
```
SELECT * 
FROM Faculty
ORDER BY Designation ASC;
```

16. Display courses sorted by Credits in descending order.
```
SELECT * 
FROM Course
ORDER BY Credits DESC;
```

17. Display only the first 3 student records.
```
SELECT * 
FROM Student
LIMIT 3;
```

18. Display only the first 5 course records.
```
SELECT * 
FROM Course
LIMIT 5;
```

*Part D: Derived / Computed Output (No Table Modification)*

19. Display student Name along with their calculated Age using DOB.
```
SELECT 
  Name,
  YEAR(CURDATE()) - YEAR(DOB) AS Age
FROM Student;
```

20. Display course CourseName along with Credits + 1 as Updated_Credits.
```
SELECT 
  CourseName,
  Credits + 1 AS Updated_Credits
FROM Course;
```

21. Display enrollment details with column Grade shown as Final_Grade.
```
SELECT 
  StudentID,
  CourseID,
  Semester,
  Grade AS Final_Grade
FROM Enrollment;
```

22. Display student Name along with year of birth extracted from DOB.
```
SELECT 
  Name,
  YEAR(DOB) AS Year_of_Birth
FROM Student;
```

23. Display faculty Name along with email domain extracted from Email.
```
SELECT 
  Name,
  SUBSTRING_INDEX(Email, '@', -1) AS Email_Domain
FROM Faculty;
```

