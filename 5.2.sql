/*
2. Выведите список товаров products и разделов catalogs, который соответствует товару.
*/

DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
id SERIAL PRIMARY KEY,
name VARCHAR(255) COMMENT 'Nazvanie razdela'
) COMMENT = 'Razdeli internet magazina';


DROP TABLE IF EXISTS products;
CREATE TABLE products (
id SERIAL PRIMARY KEY,
name VARCHAR(255) COMMENT 'Nazvanie tovara',
description TEXT COMMENT 'Opisanie',
price DECIMAL(11,2) COMMENT 'Tcena',
catalog_id INT UNSIGNED,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
KEY index_of_catalog_id(catalog_id)
) COMMENT = 'Tovari';

INSERT INTO catalogs (name) VALUES
('Процессоры'),
('Видеокарты'),
('Материнские платы'),
('Память');

INSERT INTO products (name, price, catalog_id) VALUES
('Intel Core i5-10400F', 12999, 1),
('AMD Ryzen 5 5600G', 16999, 1),
('AMD Radeon RX 6500 XT', 17799, 2),
('GeForce GTX 1650 D6', 21499, 2),
('ASUS PRIME A320I-K', 9999, 3),
('GIGABYTE X570S AORUS PRO AX', 27999, 3);

SELECT p.name, p.price, c.name
FROM products AS p
RIGHT JOIN catalogs AS c
ON p.catalog_id = c.id;












