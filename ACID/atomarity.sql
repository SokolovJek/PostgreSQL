CREATE TABLE users (
    id serial PRIMARY_KEY,
    user_id int,
    amount int CHECK=amount>0
);

SELECT * FROM users;

INSERT INTO users (user_id, amount) VALUES
    (1, 100), (2, 200);

-- транзакция обеспечивает целостность выполнения ряда SQL запросов
BEGIN;
UPDATE users SET amount = amount + 100 WHERE id = 1;
UPDATE users SET amount = amount - 100 WHERE id = 1;
COMMIT;
