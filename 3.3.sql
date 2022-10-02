/* 3. В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 
0, если товар закончился и выше нуля, если на складе имеются запасы. 
Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value. 
Нулевые запасы должны выводиться в конце, после всех записей.*/


DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
id SERIAL PRIMARY KEY,
storehouse_id INT UNSIGNED,
product_id INT UNSIGNED,
value INT UNSIGNED COMMENT 'Kolichestvo tovara na sklade',
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
#KEY value(value)
) COMMENT = 'Zapasi na sklade';

INSERT INTO storehouses_products(id, storehouse_id, product_id, value) VALUES
(DEFAULT,1,1,5),
(DEFAULT,1,2,0),
(DEFAULT,1,3,3),
(DEFAULT,1,4,10),
(DEFAULT,1,5,2),
(DEFAULT,1,6,0);
SELECT * FROM storehouses_products;

SELECT value FROM storehouses_products ORDER BY
value = 0,
value;



