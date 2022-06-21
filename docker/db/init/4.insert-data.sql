USE example_db;

SET NAMES utf8mb4;

START TRANSACTION;

-- Data registration in the examples table
INSERT INTO examples VALUES (NULL, 'example_name1');
INSERT INTO examples VALUES (NULL, 'example_name2');
INSERT INTO examples VALUES (NULL, '日本語テスト');

COMMIT;