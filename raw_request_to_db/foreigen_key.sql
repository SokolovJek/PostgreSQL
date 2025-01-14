DROP TABLE IF EXISTS speedings;

CREATE TABLE speedings (
    id serial PRIMARY KEY,
    price int NOT NULL,
    created_at TIMESTAMP DEFAULT now(),
    user_id BIGINT NOT NULL,

    CONSTRAINT user_id_fk FOREIGN KEY (user_id) REFERENCES users (id)
);
