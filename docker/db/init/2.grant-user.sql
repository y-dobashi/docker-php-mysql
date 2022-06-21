-- Create a user named example_user
CREATE USER 'example_user'@'%' IDENTIFIED BY 'example_pass';
-- Grant all permissions to example_db
GRANT ALL PRIVILEGES ON example_db.* TO 'example_user'@'%' WITH GRANT OPTION;
-- Reflection of settings
FLUSH PRIVILEGES;