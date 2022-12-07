CREATE TABLE Subject(
       id VARCHAR(10) PRIMARY KEY,
	   rollno INT,
	   subname VARCHAR(20),
	   marks INT
);

CREATE TABLE Student(
      id VARCHAR(10),
	  rollno INT,
	  sname VARCHAR(20),
	  address VARCHAR(50),
	  FOREIGN KEY(id) REFERENCES Subject(id)
);

INSERT INTO Subject VALUES('A001', 2863, 'Maths', 80);
INSERT INTO Subject VALUES('A002', 2864, 'Physics', 90);
INSERT INTO Subject VALUES('A003', 2865, 'Chemistry', 50);
INSERT INTO Subject VALUES('A004', 2866, 'Biology', 70);
INSERT INTO Subject VALUES('A005', 2867, 'History', 60);


INSERT INTO Student VALUES('A003', 2865, 'Ayush', 'bbsr');
INSERT INTO Student VALUES('A004', 2866, 'Anurag', 'jsg');
INSERT INTO Student VALUES('A004', 2866, 'Rahul', 'jsr');
INSERT INTO Student VALUES('A001', 2863, 'Manish', 'sng');

SELECT subname, COUNT(id) AS 'Total Students' FROM Subject
WHERE subname = 'Biology'
GROUP BY subname;

SELECT SUM(marks) AS TotMarks FROM Subject, Student
WHERE Subject.id = Student.id
AND sname = 'Hans';