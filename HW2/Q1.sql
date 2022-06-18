-- livesql

-- Creating the table ProjectRoomBooking

CREATE TABLE ProjectRoomBookings
(roomNum INTEGER NOT NULL,
startTime INTEGER NOT NULL,
endTime INTEGER NOT NULL,
groupName CHAR(10) NOT NULL,
PRIMARY KEY (roomNum, startTime));

-- Populating the table with values

INSERT INTO ProjectRoomBookings VALUES(1,8,10,'A');
INSERT INTO ProjectRoomBookings VALUES(2,9,15,'B');
INSERT INTO ProjectRoomBookings VALUES(1,15,18,'C');

-- Making changes to the table (Implementing CHECK Constraint to check valid startTime and endTime)

ALTER TABLE ProjectRoomBookings
ADD CONSTRAINT timeCheck check (startTime >= 7 and startTime <= 18 and endTime >= 7 and endTime <= 18 and startTime < endTime);

-- Testing the Check Constraint

-- Throws error since startTime < 7
INSERT INTO ProjectRoomBookings VALUES(1,6,9,'A');

-- Throws error since endTime > 18
INSERT INTO ProjectRoomBookings VALUES(2,11,20,'A');

-- Throws error since startTime > endTime
INSERT INTO ProjectRoomBookings VALUES(3,15,9,'A');


-- Trigger to check for the startTime of the new group to be greater than the endTime of the group alerady occupying the said room

CREATE OR REPLACE TRIGGER RoomConflict
BEFORE INSERT
ON ProjectRoomBookings
FOR EACH ROW
DECLARE
start_time NUMBER;
l_count INTEGER;
BEGIN
    SELECT COUNT(*) INTO l_count FROM ProjectRoomBookings WHERE roomNum = :new.roomNum AND :new.startTime < endTime;
    IF l_count > 0
    THEN
        SELECT startTime INTO start_time FROM ProjectRoomBookings WHERE roomNum = :new.roomNum AND :new.startTime < endTime FETCH FIRST 1 ROWS ONLY;
        IF(:new.endTime > start_time) THEN
        RAISE_APPLICATION_ERROR(-20000,'Error: Select a Differet Room or Time');
        END IF;
    END IF;
END;

-- Testing the trigger

-- Throws an error since room 1 is alerady occupied between the time range
INSERT INTO ProjectRoomBookings VALUES(1,16,17,'X');
-- Throws an error since room 2 is alerady occupied betweem certain time ranges
INSERT INTO ProjectRoomBookings VALUES(2,7,18,'Y');
-- Insertion is performed since room 3 is free
INSERT INTO ProjectRoomBookings VALUES(3,7,11,'Z');
-- Throws an error since room 3 is alerady occupied between the time range
INSERT INTO ProjectRoomBookings VALUES(3,9,16,'W');
-- Throws an error since room 2 is alerady occupied between the time range
INSERT INTO ProjectRoomBookings VALUES(2,7,10,'W');
-- Insertion is succesfull since the time slot is available 
INSERT INTO ProjectRoomBookings VALUES(1,11,13,'W');