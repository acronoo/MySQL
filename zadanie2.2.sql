DROP SCHEMA IF EXISTS media_storage;
CREATE SCHEMA media_storage;
USE media_storage;

DROP TABLE IF EXISTS files;
CREATE TABLE files (
id SERIAL PRIMARY KEY,
file_path VARCHAR(255),
file_type VARCHAR(64),
file_name VARCHAR(255),
description TEXT,
file_owner_user_id INT
);

INSERT INTO files (file_path, file_type, file_name, description, file_owner_user_id) VALUES
('C:/media_files/', 'Audio', 'Master of Puppets.mp3', 'some description here' ,3),
('C:/media_files/', 'Video', 'my_birthday.mp4', 'another description', 17);

SELECT * FROM files;
