/*
4. (по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. 
Месяцы заданы в виде списка английских названий ('may', 'august')
*/

DROP TABLE IF EXISTS users;
CREATE TABLE users (
id SERIAL PRIMARY KEY,
name VARCHAR(255) COMMENT 'Imya polzpovateley',
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
birthday_at VARCHAR(255) COMMENT 'Data rozhdeniya'
) COMMENT = 'Polzovateli magazina';

INSERT INTO users (id, name, birthday_at) VALUES 
(1, 'Dima', '26 january 1993'),
(2, 'Sergei', '15 may 1994'),
(3, 'Pasha', '10 august 1994'),
(4, 'Fedor', '23 august 1991');
SELECT * FROM users;

SELECT * FROM users WHERE 
birthday_at RLIKE 'may' OR birthday_at RLIKE 'august';



