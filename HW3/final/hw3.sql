CREATE EXTENSION postgis;
CREATE EXTENSION postgis_topology;

CREATE TABLE PLACES
(
    name varchar,
    geom geometry
);

INSERT INTO PLACES VALUES
	('Apartment','POINT(-118.288286 34.030209)'),
	('Leavey Lib', 'POINT(-118.282922 34.021808)'),
	('Dohney Lib', 'POINT(-118.283801 34.020213)'),
	('SciEng Lib', 'POINT(-118.288805 34.019645)'),
	('Account Lib', 'POINT(-118.285686 34.019456)'),
	('Hoose Lib', 'POINT(-118.286444 34.018581)'),
	('Helen Lib', 'POINT(-118.287683 34.019130)'),
	('Generatn Ftn', 'POINT(-118.283247 34.022237)'),
	('PFS Ftn', 'POINT(-118.285212 34.020206)'),
	('Garden Ftn', 'POINT(-118.283448 34.020465)'),
	('Alumni Ftn', 'POINT(-118.284562 34.020541)'),
	('Epstien Ftn', 'POINT(-118.289021 34.020498)'),
	('SSI Ftn', 'POINT(-118.285003 34.019132)')

SELECT name, ST_AsText(geom) FROM PLACES;


--Convex Hull
SELECT ST_AsText(ST_ConvexHull(ST_Collect(geom))) FROM PLACES;


--Nearest Neighbor
SELECT PLACES.name, ST_AsText(PLACES.geom), PLACES.geom <-> 'POINT(-118.288286 34.030209)'::geometry AS dist 
FROM PLACES WHERE name != 'Apartment' ORDER BY dist LIMIT 1;