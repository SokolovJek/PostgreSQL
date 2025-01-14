DROP TABLE IF EXISTS users;

BEGIN;

CREATE TABLE users VALUES (
    id serial PRIMARY_KEY NOT NULL,
    first_name VARCHAR(64) NOT NULL,
    second_name VARCHAR(64) NOT NULL,
    email VARCHAR(64) NOT NULL,
);

INSERT INTO users (first_name, second_name, email) VALUES
    ('jek', 'sokolov', 'sokolov@mail.ru'),
    ('maks', 'sokolov', 'maks@mail.ru'),
    ('miron', 'sokolov', 'miron@mail.ru');

SELECT * FROM users;

SELECT (id, first_name) FROM users WHERE id=1 or id=2;

UPDATE users SET first_name='jojo' WHERE id=1;

SELECT (id, first_name) FROM users WHERE first_name='jojo' or id=2;

DELETE FROM users WHERE id=3;

SELECT * FROM users;

COMMIT;