

DROP TABLE IF EXISTS test;
CREATE TABLE test (
	id serial PRIMARY KEY,
	name VARCHAR,
	val INT
);


DROP TABLE IF EXISTS sequence;
CREATE TABLE sequence (
	id serial PRIMARY KEY,
	val INT
);

INSERT INTO test (name, val) VALUES
	('jek', 1),
	('jek', 2),
	('jek', 3),
	('jek', 4),
	('uli', 11),
	('uli', 22),
	('uli', 33),
	('uli', 44);

INSERT INTO sequence (val) VALUES
	(1),
	(2),
	(3),
	(4);


SELECT name, val FROM test
WHERE val > ALL (SELECT val FROM sequence)

SELECT name, val FROM test
WHERE val IN (SELECT val FROM sequence)

SELECT name, val FROM test
WHERE val > ANY (SELECT val FROM sequence)
