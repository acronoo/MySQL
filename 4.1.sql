/*
 * 1. Подсчитайте средний возраст пользователей в таблице users.
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
(5, 'Pasha', '1993-08-10'),
(6, 'Stas', '1993-12-26'),
(7, 'Fedor', '1993-04-09');
SELECT * FROM users;
/*
 * Преобразуем сегоднешнюю дату и даты рождения в ДНИ. Вычитаем из сегоднешней даты день рождения, получаем возраст в днях. 
 * Делим полученное значение на 365.25 Получаем возраст в годах c дробной частью. Отбрасываем дробную часть с помощью FLOOR, 
 * и находим среднее арифмтическое с помощью AVG()
 * Если необходимо более точно подсчитать средний возраст, FLOOR можно убрать.
 */
SELECT AVG(FLOOR((TO_DAYS(NOW()) - TO_DAYS(birthday_at)) / 365.25)) AS age
FROM users;



