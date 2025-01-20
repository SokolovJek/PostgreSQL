
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


WITH test_with_on_alias (val_from_s, name_from_tets) AS (
		SELECT s.val, t.name FROM sequence s
		JOIN test t ON t.val=s.val
	),
	test_with AS (
		SELECT s.val, t.name FROM sequence s
		JOIN test t ON t.val=s.val
	)

SELECT * FROM test_with_on_alias
JOIN test_with ON test_with.val= test_with_on_alias.val_from_s;
