# Users Table
CREATE TABLE `my-personal-website`.`users` ( `id` INT UNSIGNED NOT NULL AUTO_INCREMENT , `username` VARCHAR(45) NOT NULL , `password` VARCHAR(45) NOT NULL , `email` VARCHAR(45) NOT NULL , PRIMARY KEY (`id`), UNIQUE (`username`), UNIQUE (`email`)) ENGINE = InnoDB COMMENT = 'Main table of users.';
