/*
1. Составьте список пользователей users, которые осуществили хотя бы один заказ (orders) в интернет-магазине.
*/

DROP TABLE IF EXISTS users;
CREATE TABLE users (
id SERIAL PRIMARY KEY,
name VARCHAR(255) COMMENT 'Imya polzpovateley',
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
birthday_at DATE COMMENT 'Data rozhdeniya'
) COMMENT = 'Polzovateli magazina';

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
id SERIAL PRIMARY KEY,
user_id INT,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
KEY index_of_user_id(user_id)
) COMMENT = 'Zakazi';

/* Заполним таблицу users и orders*/

INSERT INTO users (id, name, birthday_at) VALUES 
(1, 'Dima', '1993-06-26'),
(2, 'Pasha', '1994-08-10'),
(3, 'Sergei', '1994-07-25'),
(4, 'Fedor', '1990-04-20'),
(5, 'Jenya', '1996-11-15'),
(6, 'Nastya', '1996-11-11'),
(7, 'Stas', '1993-12-27'),
(8, 'Ivan', '1992-04-16'),
(9, 'Petr', '1991-02-17');

INSERT INTO orders (id, user_id) VALUES
(1, 1),
(2, 3),
(3, 7),
(4, 5);

SELECT u.name, o.id AS order_number
FROM users AS u
JOIN orders AS o
ON u.id = o.user_id;



