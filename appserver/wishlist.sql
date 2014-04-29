-- create database for the wish list
CREATE DATABASE IF NOT EXISTS wishlist;

-- create a new user for the Web app
DELETE FROM mysql.user WHERE User = 'webuser';
CREATE USER 'webuser'@'localhost' IDENTIFIED BY 'vagrantrocks';

-- grant only the necessary privileges to our new user
GRANT SELECT, INSERT, UPDATE, DELETE ON wishlist.* TO 'webuser'@'localhost';

-- make this our active database
USE wishlist;

-- create a table to store our wish list items
DROP TABLE IF EXISTS `WishListItem`;
CREATE TABLE IF NOT EXISTS `WishListItem` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `description` varchar(255),

  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

-- start with some data in the table
INSERT INTO WishListItem (name, description) VALUES ('2x2 Ghost Cube', 'I can never have enough cube puzzles.');
INSERT INTO WishListItem (name, description) VALUES ('Red Rider BB Gun', 'I will NOT shoot my eye out.');
INSERT INTO WishListItem (name, description) VALUES ('Sonic screwdriver', 'Is there anything it cannot do?');
