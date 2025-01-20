DROP TABLE IF EXISTS Test;

CREATE TABLE Test (
	id serial PRIMARY KEY,
	val1 Varchar,
	val2 int
);

INSERT INTO test (val1, val2) VALUES
	('aa', 1),
	('aa', 2),
	('ab', 3),
	('ac', 4);

SELECT * FROM test
ORDER BY val2 ASC;

SELECT * FROM test
ORDER BY val1 ASC, val2 DESC;
