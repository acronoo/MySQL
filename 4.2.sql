/*
2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
Следует учесть, что необходимы дни недели текущего года, а не года рождения.
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

/*
 * Функция MAKEDATE формирует нам дату из года и порядкового номера дня в году(1-366).
 * В качестве года используем YEAR(NOW())
 * Что бы достать порядковый номер дня используем DAYOFYEAR
 */
SELECT MAKEDATE(YEAR(NOW()), DAYOFYEAR(birthday_at))
FROM users;
/*
 * Заворачиваем всю конструкцию в DAYNAME(), получаем, в какие дни недели будут дни рождения в этом году, у людей из таблицы users.
 * Разбиваем на группы по дням недели. Используем COUNT(*) для подсчета значений в каждой группе
 */

SELECT COUNT(*),
DAYNAME(MAKEDATE(YEAR(NOW()), DAYOFYEAR(birthday_at))) AS day_of_the_week
FROM users
GROUP BY day_of_the_week;





