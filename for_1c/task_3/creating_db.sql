CREATE DATABASE `publishing_house`;

CREATE TABLE `publishing_house`.`books`
( `id` INT(250) NOT NULL AUTO_INCREMENT,
  `ISBN` INT(250) NOT NULL,
  `name` VARCHAR(65) NOT NULL,
  `pages` INT(250) NOT NULL, 
  `date` DATE NOT NULL,
 PRIMARY KEY (`id`)) ENGINE = InnoDB;

CREATE TABLE `publishing_house`.`authors`
( `id` INT(250) NOT NULL AUTO_INCREMENT ,
 `name` VARCHAR(250) NOT NULL ,
 `surname` VARCHAR(250) NOT NULL ,
  PRIMARY KEY (`id`)) ENGINE = InnoDB;

CREATE TABLE `publishing_house`.`book_author`
( `id` INT(250) NOT NULL AUTO_INCREMENT ,
 `id_book` INT(250) NOT NULL ,
 `id_author` INT(250) NOT NULL ,
 PRIMARY KEY (`id`)) ENGINE = InnoDB;

CREATE TABLE `publishing_house`.`genre`
( `id` INT(250) NOT NULL ,
 `name` VARCHAR(65) NOT NULL ,
  PRIMARY KEY (`id`)) ENGINE = InnoDB;

CREATE TABLE `publishing_house`.`book_genre`
( `id` INT(250) NOT NULL AUTO_INCREMENT ,
 `id_book` INT(250) NOT NULL ,
  `id_genre` INT(250) NOT NULL ,
   PRIMARY KEY (`id`)) ENGINE = InnoDB;

ALTER TABLE book_genre
    ADD FOREIGN KEY (id_book) REFERENCES books(id),
    ADD FOREIGN KEY (id_genre) REFERENCES genre(id);

ALTER TABLE book_author
    ADD FOREIGN KEY (id_book) REFERENCES books(id),
    ADD FOREIGN KEY (id_author) REFERENCES authors(id);