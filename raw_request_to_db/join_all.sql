
DROP TABLE IF EXISTS vv.paty_users;
DROP TABLE IF EXISTS vv.bear;


CREATE TABLE vv.bear (
	id serial PRIMARY KEY,
	name VARCHAR(64) NOT NULL UNIQUE
);


CREATE TABLE vv.paty_users (
	id serial PRIMARY KEY,
	name VARCHAR(64) NOT NULL,
	count float NOT NULL,
	bear_id INT,

	CONSTRAINT bear_id_fk FOREIGN KEY (bear_id) REFERENCES vv.bear (id) 
);

INSERT INTO vv.bear (name) VALUES 
	('bere_dreem'),
	('jiguli'),
	('drahma'),
	('borocuda');

INSERT INTO vv.paty_users (name, count, bear_id) VALUES 
	('jek', 0.5, 1),
	('maks', 1.5, 2),
	('dimon', 2.5, 1),
	('vova', 0.0, NULL);


-- get all users
SELECT u.name, u.count, b.name FROM vv.paty_users u
INNER JOIN vv.bear b ON u.bear_id=b.id;

-- get only users dring beer
SELECT * FROM vv.paty_users u
LEFT JOIN vv.bear b ON u.bear_id=b.id;

-- get beers not used the users
SELECT b.name AS bear_not_used FROM vv.bear b
LEFT JOIN vv.paty_users u ON b.id=u.bear_id
WHERE u.bear_id IS NULL;

-- get beers used the users
SELECT b.name AS bear_used FROM vv.bear b
INNER JOIN vv.paty_users u ON b.id=u.bear_id


-- get beer is not used or user not dring bear
SELECT u.name AS not_dringing_users, b.name AS not_used_bear FROM vv.paty_users u
FULL OUTER JOIN vv.bear b ON b.id=u.bear_id
WHERE u.bear_id IS NULL OR b.id IS NULL;



-- get beers used the users
SELECT count(b.name) AS bear_used FROM vv.bear b
INNER JOIN vv.paty_users u ON b.id=u.bear_id

	