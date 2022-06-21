USE example_db;

-- Create a table called examples
CREATE TABLE `examples` (
  `id`           INT NOT NULL AUTO_INCREMENT,
  `name`         VARCHAR(255) NOT NULL,
  CONSTRAINT PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_bin;