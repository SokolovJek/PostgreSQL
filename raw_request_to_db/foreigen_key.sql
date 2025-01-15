DROP TABLE IF EXISTS spendings;


CREATE TABLE spendings (
    id serial PRIMARY KEY,
    price int NOT NULL,
    created_at TIMESTAMP DEFAULT now(),
    user_id BIGINT NOT NULL,

    CONSTRAINT user_id_fk FOREIGN KEY (user_id) REFERENCES users (id)
);


INSERT INTO spendings (price, user_id) VALUES 
	(100, 1),
	(200, 1),
	(50, 2),
	(200, 1),
	(400, 4),
	(800, 2),
	(410, 1),
	(40, 5);



-- ERROR: Ключ (user_id)=(4) отсутствует в таблице "users".
--INSERT INTO spendings (price, user_id) VALUES 
--	(100, 4);