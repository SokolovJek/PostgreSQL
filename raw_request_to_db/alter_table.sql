DROP TABLE IF EXISTS categories;

CREATE TABLE categories (
	id serial PRIMARY KEY,
	name VARCHAR(64) NOT NULL UNIQUE,
	price INT NOT NULL
);

INSERT INTO categories (name, price) VALUES 
	('choclad', 50),
	('banana', 15),
	('milk', 100),
	('coca-cola', 40),
	('apple', 800),
	('shuge', 250),
	('fuell', 400),
	('fanta', 410),
	('tomato', 200),
	('juce', 150);

UPDATE categories c SET 
	name='fuel'
WHERE price=400;


SELECT categories.* FROM categories
RIGHT JOIN spendings ON categories.price=spendings.price
WHERE categories.price IS NULL ;




ALTER TABLE spendings ADD COLUMN category_id int;
ALTER TABLE spendings ADD CONSTRAINT category_fk FOREIGN KEY (category_id) REFERENCES categories (id)



