DROP TABLE IF EXISTS users;
CREATE TABLE users (
id SERIAL PRIMARY KEY,
name VARCHAR(255) COMMENT 'Imya polzpovateley',
created_at DATETIME,
updated_at DATETIME,
birthday_at DATE COMMENT 'Data rozhdeniya'
) COMMENT = 'Polzovateli magazina';

# Вставляем значения, поля created_at и updated_at оставляем пустыми
INSERT INTO users (id, name, birthday_at) VALUES 
(1, 'Dima', '1993-06-26'),
(DEFAULT, 'Sergei', '1994-07-25');
SELECT * FROM users;

#Обновляем поля created_at и updated_at
UPDATE users SET
created_at = NOW(),
updated_at = NOW()
WHERE name = 'Dima' OR name = 'Sergei';
#created_at = NOW() WHERE name = 'Sergei',
#updated_at = NOW() WHERE name = 'Sergei';
SELECT * FROM users;
