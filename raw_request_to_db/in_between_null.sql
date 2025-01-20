CREATE TABLE Teacher (
	id serial PRIMARY KEY,
	first_name VARCHAR NOT NULL,
	midle_name VARCHAR,
	last_name VARCHAR NOT NULL
);

INSERT INTO Teacher (first_name, midle_name, last_name) VALUES
	('jojo', NULL, 'Sojokov'),
	('Mojo', 'Jojoovna', 'Kokovrenko'),
	('Koly', NULL, 'Koko'),
	('Tany', 'Alexeivna', 'Borovyy'),
	('Jek', 'Evgenievich', 'Sokolov'),
	('Maks', NULL, 'Bobov');

SELECT * FROM teacher t
WHERE midle_name IS NOT NULL;


CREATE TABLE Payments (
	id serial PRIMARY KEY,
	unit_price  INT NOT NULL
);

INSERT INTO Payments (unit_price) VALUES
	(100),
	(200),
	(10),
	(59),
	(400),
	(100);

SELECT * FROM Payments
WHERE unit_price BETWEEN 100 AND 400;


SELECT * FROM Payments
WHERE unit_price IN (100, 10);
