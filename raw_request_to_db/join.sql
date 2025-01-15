SELECT * FROM spendings
LEFT JOIN users ON users.id=spendings.user_id;


SELECT spendings.id, spendings.price, users.first_name FROM spendings
JOIN users ON users.id=spendings.user_id;

SELECT spendings.id, spendings.price, users.first_name FROM spendings
RIGHT JOIN users ON users.id=spendings.user_id;


SELECT * FROM spendings
RIGHT OUTER JOIN users ON users.id=spendings.user_id;

SELECT * FROM spendings
LEFT OUTER JOIN users ON users.id=spendings.user_id;


SELECT * FROM spendings
FULL OUTER JOIN users ON users.id=spendings.user_id;

SELECT * FROM spendings
JOIN users ON users.id=spendings.user_id WHERE users.first_name='maks'


C:\Users\User\AppData\Roaming\DBeaverData\workspace6\General\Scripts\join.sql
