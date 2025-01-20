
DROP TABLE IF EXISTS test;
CREATE TABLE test (
	id serial PRIMARY KEY,
	name VARCHAR,
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

SELECT * FROM test
WHERE val=(SELECT max(val) FROM test);
