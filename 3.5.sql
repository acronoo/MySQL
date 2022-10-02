/*
5. (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса. 
SELECT * FROM catalogs WHERE id IN (5, 1, 2); 
Отсортируйте записи в порядке, заданном в списке IN.
*/


DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
id SERIAL PRIMARY KEY,
name VARCHAR(255) COMMENT 'Nazvanie razdela'
#UNIQUE unique_name(name(10))
) COMMENT = 'Razdeli internet magazina';

INSERT INTO catalogs VALUES
(DEFAULT, 'Processors'),
(DEFAULT, 'Mother board'),
(DEFAULT, 'Graphic card'),
(DEFAULT, 'RAM'),
(DEFAULT, 'SSD'),
(DEFAULT, 'Monitors');

SELECT * FROM catalogs WHERE id IN (5, 1, 2)
ORDER BY id = 2,
id = 1,
id = 5;




