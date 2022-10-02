/* 2.Таблица users была неудачно спроектирована. 
 * Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате "20.10.2017 8:10". 
 * Необходимо преобразовать поля к типу DATETIME, сохранив введеные ранее значения. */

DROP TABLE IF EXISTS users;
CREATE TABLE users (
id SERIAL PRIMARY KEY,
name VARCHAR(255) COMMENT 'Imya polzpovateley',
created_at VARCHAR(255),
updated_at VARCHAR(255),
birthday_at DATE COMMENT 'Data rozhdeniya'
) COMMENT = 'Polzovateli magazina';

INSERT INTO users (id, name, birthday_at, created_at, updated_at) VALUES 
(1, 'Dima', '1993-06-26', '20.10.2017 8:10', '20.10.2017 8:10'),
(DEFAULT, 'Sasha', '1993-06-26', '30.10.2017 8:10', '30.10.2017 8:10'),
(DEFAULT, 'Sergei', '1993-06-26', '21.10.2017 8:10', '21.10.2017 8:10'),
(DEFAULT, 'Petya', '1993-06-26', '25.10.2017 8:10', '25.10.2017 8:10'),
(DEFAULT, 'Dasha', '1993-06-26', '27.10.2017 8:10', '27.10.2017 8:10');
SELECT * FROM users;

SELECT STR_TO_DATE ('27.10.2017 8:10', '%d.%m.%Y %k:%i');

UPDATE users SET
created_at = STR_TO_DATE (created_at , '%d.%m.%Y %k:%i'),
updated_at = STR_TO_DATE (updated_at , '%d.%m.%Y %k:%i');
SELECT * FROM users;

ALTER TABLE users CHANGE 
created_at created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
CHANGE updated_at updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;
SELECT * FROM users;



