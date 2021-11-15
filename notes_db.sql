CREATE DATABASE `notes_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `notes_db`;

CREATE TABLE `users` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `name` CHAR(50) NOT NULL,
   `email` CHAR(50) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `categories` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `description` CHAR(20) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `notes` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `title` CHAR(100) NOT NULL,
   `description` TEXT NOT NULL,
   `create_date` DATE NOT NULL,
   `last_modify_date` DATE NOT NULL,
   `user_id` INT NOT NULL,
   `protected` TINYINT NOT NULL DEFAULT 0,
   PRIMARY KEY (`id`)
);

CREATE TABLE `notes_categories` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `id_note` INT NOT NULL,
   `id_category` INT NOT NULL,
   PRIMARY KEY (`id`)
);


ALTER TABLE `notes` ADD CONSTRAINT `FK_f88431eb-acac-481a-bccb-bf65c73663f5` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`)  ;

ALTER TABLE `notes_categories` ADD CONSTRAINT `FK_8d38f663-de19-44d5-80a9-7a0aa5e8456b` FOREIGN KEY (`id_note`) REFERENCES `notes`(`id`)  ;

ALTER TABLE `notes_categories` ADD CONSTRAINT `FK_efa58ec3-7740-40de-9e32-d4cdc281ac08` FOREIGN KEY (`id_category`) REFERENCES `categories`(`id`)  ;

INSERT INTO notes_db.users(name, email) VALUES('Novak Djokovic', 'novak@gmail.com');
INSERT INTO notes_db.users(name, email) VALUES('Daniil Medvedev', 'daniil@gmail.com');
INSERT INTO notes_db.users(name, email) VALUES('Alexander Zverev', 'alexander@gmail.com');
INSERT INTO notes_db.users(name, email) VALUES('Stefanos Tsitsipas', 'stefanos@gmail.com');
INSERT INTO notes_db.users(name, email) VALUES('Andrey Rublev', 'andrey@gmail.com');
INSERT INTO notes_db.users(name, email) VALUES('Rafael Nadal', 'rafael@gmail.com');
INSERT INTO notes_db.users(name, email) VALUES('Matteo Berretini', 'matteo@gmail.com');
INSERT INTO notes_db.users(name, email) VALUES('Casper Ruud', 'casper@gmail.com');
INSERT INTO notes_db.users(name, email) VALUES('Hubert Hurkacz', 'hubert@gmail.com');
INSERT INTO notes_db.users(name, email) VALUES('Stefanos Tsitsipas', 'stefanos@gmail.com');

INSERT INTO notes_db.categories(description) VALUES('Personal');
INSERT INTO notes_db.categories(description) VALUES('Work');
INSERT INTO notes_db.categories(description) VALUES('House');
INSERT INTO notes_db.categories(description) VALUES('Supermarket');
INSERT INTO notes_db.categories(description) VALUES('School');
INSERT INTO notes_db.categories(description) VALUES('Training');
INSERT INTO notes_db.categories(description) VALUES('Tournaments');
INSERT INTO notes_db.categories(description) VALUES('Bank');
INSERT INTO notes_db.categories(description) VALUES('Travels');
INSERT INTO notes_db.categories(description) VALUES('Car');

INSERT INTO notes_db.notes (title, description, create_date, last_modify_date, user_id, protected) 
VALUES('Example1', 'Note Example1', '2021/11/01', '2021/11/10', 1, 0);

INSERT INTO notes_db.notes_categories(id_note, id_category) VALUES(1, 1);

INSERT INTO notes_db.notes (title, description, create_date, last_modify_date, user_id, protected) 
VALUES('Example2', 'Note Example2', '2021/11/01', '2021/11/10', 2, 0);

INSERT INTO notes_db.notes_categories(id_note, id_category) VALUES(2, 2);

INSERT INTO notes_db.notes (title, description, create_date, last_modify_date, user_id, protected) 
VALUES('Example3', 'Note Example3', '2021/11/01', '2021/11/10', 3, 0);

INSERT INTO notes_db.notes_categories(id_note, id_category) VALUES(3, 3);

INSERT INTO notes_db.notes (title, description, create_date, last_modify_date, user_id, protected) 
VALUES('Example4', 'Note Example4', '2021/11/01', '2021/11/10', 4, 0);

INSERT INTO notes_db.notes_categories(id_note, id_category) VALUES(4, 4);

INSERT INTO notes_db.notes (title, description, create_date, last_modify_date, user_id, protected) 
VALUES('Example5', 'Note Example5', '2021/11/01', '2021/11/10', 5, 0);

INSERT INTO notes_db.notes_categories(id_note, id_category) VALUES(5, 5);

INSERT INTO notes_db.notes (title, description, create_date, last_modify_date, user_id, protected) 
VALUES('Example6', 'Note Example6', '2021/11/01', '2021/11/10', 6, 0);

INSERT INTO notes_db.notes_categories(id_note, id_category) VALUES(6, 6);

INSERT INTO notes_db.notes (title, description, create_date, last_modify_date, user_id, protected) 
VALUES('Example7', 'Note Example7', '2021/11/01', '2021/11/10', 7, 0);

INSERT INTO notes_db.notes_categories(id_note, id_category) VALUES(7, 7);

INSERT INTO notes_db.notes (title, description, create_date, last_modify_date, user_id, protected) 
VALUES('Example8', 'Note Example8', '2021/11/01', '2021/11/10', 8, 0);

INSERT INTO notes_db.notes_categories(id_note, id_category) VALUES(8, 8);

INSERT INTO notes_db.notes (title, description, create_date, last_modify_date, user_id, protected) 
VALUES('Example9', 'Note Example9', '2021/11/01', '2021/11/10', 9, 0);

INSERT INTO notes_db.notes_categories(id_note, id_category) VALUES(9, 9);

INSERT INTO notes_db.notes (title, description, create_date, last_modify_date, user_id, protected) 
VALUES('Example10', 'Note Example10', '2021/11/01', '2021/11/10', 10, 0);

INSERT INTO notes_db.notes_categories(id_note, id_category) VALUES(10, 10);
