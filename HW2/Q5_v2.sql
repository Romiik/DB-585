-- livesql

-- Creating the table Candidate to store the information of potential instructors

CREATE TABLE Candidate(
    Instructor varchar(255),
    Subject varchar(255)
);

-- Populating the Candidate table 

INSERT INTO Candidate (Instructor, Subject) VALUES ('Aleph', 'Scratch');
INSERT INTO Candidate (Instructor, Subject) VALUES ('Aleph', 'Java');
INSERT INTO Candidate (Instructor, Subject) VALUES ('Aleph', 'Processing');
INSERT INTO Candidate (Instructor, Subject) VALUES ('Bit', 'Python');
INSERT INTO Candidate (Instructor, Subject) VALUES ('Bit', 'Javascript');
INSERT INTO Candidate (Instructor, Subject) VALUES ('Bit', 'Java');
INSERT INTO Candidate (Instructor, Subject) VALUES ('CRC', 'Python');
INSERT INTO Candidate (Instructor, Subject) VALUES ('CRC', 'Javascript');
INSERT INTO Candidate (Instructor, Subject) VALUES ('Dat', 'Scratch');
INSERT INTO Candidate (Instructor, Subject) VALUES ('Dat', 'Python');
INSERT INTO Candidate (Instructor, Subject) VALUES ('Dat', 'Javascript');
INSERT INTO Candidate (Instructor, Subject) VALUES ('Emscr', 'Scratch');
INSERT INTO Candidate (Instructor, Subject) VALUES ('Emscr', 'Processing');
INSERT INTO Candidate (Instructor, Subject) VALUES ('Emscr', 'Javascript');
INSERT INTO Candidate (Instructor, Subject) VALUES ('Emscr', 'Python');

-- Creating the Subject table

CREATE TABLE SUBJECT(
    SubID int,
    SubName varchar(255)
);

-- Populating the Subject Table with the subjects offered

INSERT INTO SUBJECT (SubID, SubName) VALUES (1, 'Javascript');
INSERT INTO SUBJECT (SubID, SubName) VALUES (2, 'Scratch');
INSERT INTO SUBJECT (SubID, SubName) VALUES (3, 'Python');



-- ANS

Select Instructor from candidate join Subject on candidate.subject = subject.subName GROUP BY Instructor having count(*) = (Select count(*) from Subject);

-- In the first part of the query, we are joing the two table Candidate and subjects based on the subject column which will remove all the redundant subjects from the final table
-- Then, in the second part we are grouping the candidates by their unique id or name, this will give us the total count of the subjects taught by a particular candidate.
-- Finally, we are comparing the total subjects taught by a candidate with the total subjects we're offering
-- This will provide us with the candidates who can teach all the subjects

