-- livesql

CREATE TABLE Enrollment(
    StudentID INT,
    ClassName VARCHAR(255),
    GRADE CHAR(10)
);

-- Populating the table

INSERT INTO Enrollment (StudentID, ClassName, Grade) VALUES (123, 'Processing', 'A');
INSERT INTO Enrollment (StudentID, ClassName, Grade) VALUES (123, 'Python', 'B');
INSERT INTO Enrollment (StudentID, ClassName, Grade) VALUES (123, 'Scratch', 'B');
INSERT INTO Enrollment (StudentID, ClassName, Grade) VALUES (662, 'Java', 'B');
INSERT INTO Enrollment (StudentID, ClassName, Grade) VALUES (662, 'Python', 'A');
INSERT INTO Enrollment (StudentID, ClassName, Grade) VALUES (662, 'Javascript', 'A');
INSERT INTO Enrollment (StudentID, ClassName, Grade) VALUES (662, 'Scratch', 'B');
INSERT INTO Enrollment (StudentID, ClassName, Grade) VALUES (345, 'Scratch', 'A');
INSERT INTO Enrollment (StudentID, ClassName, Grade) VALUES (345, 'Javascript', 'B');
INSERT INTO Enrollment (StudentID, ClassName, Grade) VALUES (345, 'Python', 'A');
INSERT INTO Enrollment (StudentID, ClassName, Grade) VALUES (555, 'Python', 'B');
INSERT INTO Enrollment (StudentID, ClassName, Grade) VALUES (555, 'Javascript', 'B');
INSERT INTO Enrollment (StudentID, ClassName, Grade) VALUES (213, 'Javascript', 'A');

select * from Enrollment;

-- ANS

SELECT ClassName, COUNT(ClassName) as Total 
FROM Enrollment 
GROUP BY ClassName 
ORDER BY Total DESC, ClassName;