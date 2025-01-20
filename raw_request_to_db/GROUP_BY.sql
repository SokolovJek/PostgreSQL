DROP TABLE IF EXISTS Test;

CREATE TABLE Test (
	id serial PRIMARY KEY,
	val1 Varchar,
	val2 int
);

INSERT INTO test (val1, val2) VALUES
	('a', 1),
	('a', 2),
	('b', 3),
	('b', 2),
	('b', 3),
	('c', 4);


SELECT val1, count(val1), AVG(val2), 'literal' AS simple_literal FROM test
GROUP BY val1;

SELECT val1, count(val1), AVG(val2), 'literal' AS simple_literal FROM test
GROUP BY val1, val2;
