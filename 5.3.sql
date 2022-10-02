/*
3. (по желанию) Есть таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
Поля from, to и label содержат английские названия городов, поле name — русское. 
Выведите список рейсов (flights) с русскими названиями городов.
*/

DROP TABLE IF EXISTS flights;
CREATE TABLE flights(
id SERIAL PRIMARY KEY,
flight_from VARCHAR(255),
flight_to VARCHAR(255)
);

DROP TABLE IF EXISTS cities;
CREATE TABLE cities(
id SERIAL PRIMARY KEY,
label VARCHAR(255),
name VARCHAR(255)
);

INSERT INTO cities(label, name) VALUES
('Moscow', 'Москва'),
('Saint-Petersburg', 'Санкт-Петербург'),
('New York', 'Нью-Йорк'),
('Amsterdam', 'Амстердам'),
('Rome', 'Рим'),
('London', 'Лондон'),
('Stockholm', 'Стокгольм');

INSERT INTO flights(flight_from, flight_to) VALUES
('Moscow', 'New York'),
('Amsterdam', 'Saint-Petersburg'),
('London', 'Rome');

/* 
 * Заменяем столбец flight_to на русские название, в дальнейшем эту выборку мы будем использвать как вложенную таблицу.
 */

SELECT flights.id, flight_from, cities.name AS f_to
FROM flights
JOIN cities 
ON flight_to = cities.label;

SELECT flt.id, cities.name AS f_from, flt.f_to
FROM # Вкладываем сюда таблицу в которой уже flight_to на русском
(SELECT flights.id, flight_from, cities.name AS f_to
FROM flights
JOIN cities 
ON flight_to = cities.label) AS flt # Вложенной таблице даём название flt
JOIN cities
WHERE flt.flight_from = cities.label;













