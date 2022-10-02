DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
id SERIAL PRIMARY KEY,
name VARCHAR(255) COMMENT 'Nazvanie razdela'
#UNIQUE unique_name(name(10))
) COMMENT = 'Razdeli internet magazina';

INSERT IGNORE INTO catalogs (id,name) VALUES 
(DEFAULT, NULL),
(DEFAULT,''),
(DEFAULT, NULL);

SELECT id, name FROM catalogs;

UPDATE 
catalogs 
SET
name = 'empty'
WHERE 
name IS NULL OR name = '';

SELECT id, name FROM catalogs;

/*  Для проведения операции UPDATE нам необходимо убрать уникальный индекс со столбца name.
 * Наличие уникального индекса не позволяет нам создавать дублирующиеся значения. В нашем случае это значение "empty"
 */ 