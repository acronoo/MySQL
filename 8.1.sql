/*
1. Создайте хранимую функцию hello(), которая будет возвращать приветствие, 
в зависимости от текущего времени суток. 
С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", 
с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".
*/

DELIMITER //
DROP FUNCTION IF EXISTS hello//
CREATE FUNCTION hello()
RETURNS TEXT DETERMINISTIC
BEGIN 
DECLARE cur_time TIME;
SET cur_time = DATE_FORMAT(NOW(), '%H:%i:%s');

CASE
WHEN cur_time BETWEEN '06:00:00' AND '11:59:59' THEN RETURN "Доброе утро";
WHEN cur_time BETWEEN '12:00:00' AND '17:59:59' THEN RETURN "Добрый день";
WHEN cur_time BETWEEN '18:00:00' AND '23:59:59' THEN RETURN "Добрый вечер";
WHEN cur_time BETWEEN '00:00:00' AND '05:59:59' THEN RETURN "Доброй ночи";
END CASE;
END //


