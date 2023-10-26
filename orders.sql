CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(40),
    product_price INTEGER,
    quantity INTEGER
);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (1, 'Spaghetti', 5, 2),
(2, 'Calzone', 8, 1),
(3, 'Minestrone', 3, 1),
(3, 'Salad', 4, 1),
(4, 'Pizza', 10, 1);

SELECT * FROM orders;

SELECT SUM(quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 3;