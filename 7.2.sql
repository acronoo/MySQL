/*
2. (по желанию) Есть таблица (accounts), включающая в себя три столбца: id, name, password, 
которые содержат первичный ключ, имя пользователя и его пароль. 
Создайте представление username таблицы accounts, предоставляющее доступ к столбцам id и name. 
Создайте пользователя user_read, который бы не имел доступа к таблице accounts, однако мог извлекать записи из представления username.
*/

USE shop;

DROP TABLE IF EXISTS accounts;
CREATE TABLE accounts (
id SERIAL PRIMARY KEY,
name VARCHAR(255),
user_password VARCHAR(255)
);

INSERT INTO accounts VALUES
(DEFAULT, 'Dima', 'qweqwe'),
(DEFAULT, 'Jenya', 'q1345'),
(DEFAULT, 'Sergei', '123123');

CREATE OR REPLACE VIEW username(id, name)
AS SELECT id, name FROM accounts;


SELECT * FROM accounts;
SELECT * FROM username;

DROP USER IF EXISTS 'user_read'@'localhost';
CREATE USER 'user_read'@'localhost';
GRANT SELECT ON shop.username TO 'user_read'@'localhost';



