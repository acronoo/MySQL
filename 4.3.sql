/*
3. (по желанию) Подсчитайте произведение чисел в столбце таблицы.

https://stackoverflow.com/questions/30665719/how-to-multiply-all-values-within-a-column-with-sql-like-sum

*/

DROP TABLE IF EXISTS users;
CREATE TABLE users (
id SERIAL PRIMARY KEY,
name VARCHAR(255) COMMENT 'Imya polzpovateley',
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
birthday_at DATE COMMENT 'Data rozhdeniya'
) COMMENT = 'Polzovateli magazina';

INSERT INTO users (id, name, birthday_at) VALUES
(1, 'Dima', '1993-06-26'),
(2, 'Sergei', '1994-07-25'),
(3, 'Nastya', '1996-11-20'),
(4, 'Jenya', '1996-11-15'),
(5, 'Pasha', '1993-08-10');


SELECT ROUND(EXP(SUM(LOG(id))),1) AS factorial
FROM users;


