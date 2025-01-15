--INSERT INTO users (first_name, second_name, email) VALUES 
	('kiril', 'koko', 'koko@mail.ru')
	('marina', 'bubahuba', 'bubahuba@mail.ru')

INSERT INTO spendings (price, user_id) VALUES
	(400, 4),
	(800, 2),
	(410, 1),
	(40, 5);


-- not interest
SELECT sum(spendings.price) FROM spendings
JOIN users ON users.id=spendings.user_id
GROUP BY spendings.user_id
HAVING sum(spendings.price) > 1000


SELECT users.first_name, SUM(spendings.price) FROM users
JOIN spendings ON spendings.user_id=users.id
GROUP BY users.id, spendings.user_id
HAVING SUM(spendings.price)>1000;


SELECT users.*, sum(spendings.price) FROM users
JOIN spendings ON spendings.user_id=users.id
GROUP BY users.id
HAVING SUM(spendings.price)>1000;


