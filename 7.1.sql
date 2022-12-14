/*Создайте двух пользователей которые имеют доступ к базе данных shop. 
 * Первому пользователю shop_read должны быть доступны только запросы на чтение данных, 
 * второму пользователю shop — любые операции в пределах базы данных shop.
 *  */

CREATE USER shop_read;
GRANT SELECT ON *.* TO 'shop_read'@'%';

CREATE USER shop_user;
GRANT ALL ON shop.* TO 'shop_user'@'%';