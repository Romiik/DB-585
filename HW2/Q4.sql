-- livesql


-- Creating a table CodingClass which contains information about instructor classes

CREATE TABLE CodingClass(
    InstructorID int,
    InstructorName varchar(255),
    ClassName varchar(255),
    studentCount int
);

-- Populating the table CodingClass

INSERT INTO CodingClass (InstructorID, InstructorName, ClassName, studentCount) VALUES(100, 'Dat', 'Javascript', 20);
INSERT INTO CodingClass (InstructorID, InstructorName, ClassName, studentCount) VALUES(100, 'Dat', 'Python', 20);
INSERT INTO CodingClass (InstructorID, InstructorName, ClassName, studentCount) VALUES(100, 'Dat', 'Scatch', 15);
INSERT INTO CodingClass (InstructorID, InstructorName, ClassName, studentCount) VALUES(101, 'Aleph', 'Scratch', 30);
INSERT INTO CodingClass (InstructorID, InstructorName, ClassName, studentCount) VALUES(101, 'Aleph', 'Java', 20);
INSERT INTO CodingClass (InstructorID, InstructorName, ClassName, studentCount) VALUES(102, 'Bit', 'Javascript', 10);
INSERT INTO CodingClass (InstructorID, InstructorName, ClassName, studentCount) VALUES(102, 'Bit', 'Java', 10);
INSERT INTO CodingClass (InstructorID, InstructorName, ClassName, studentCount) VALUES(102, 'Bit', 'Python', 20);



SELECT * FROM CodingClass;

-- Let hourly_rate = 30

Select max(0.1 * 30 * sum(studentCount)) as bonus from CodingClass Group BY InstructorID;

