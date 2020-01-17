/*DROP DATABASE `shopdb`;
CREATE DATABASE `shopdb`;
USE `shopdb`;*/

/*DROP TABLE `categories`;*/
CREATE TABLE `categories` (
`cat_id` TINYINT NOT NULL AUTO_INCREMENT,
`cat_name` VARCHAR(50) NOT NULL,
`cat_url_name` VARCHAR(15) NOT NULL,
PRIMARY KEY (`cat_id`)
) ENGINE=INNODB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

INSERT INTO `categories` VALUES (1,'Shirts','shirts'),(2,'Footware','footware'),(3,'Books','books'),(4,'Beauty','beauty'),(5,'Software','software'),(6,'Computers','computers'),(7,'Kitchen Ware','kitchenware'),
(8,'Luggage','luggage'),(9,'Camping','camping'),(10,'Sports','sports');

/*DROP TABLE `ci_sessions`;*/
CREATE TABLE `ci_sessions` (
`session_id` VARCHAR(40) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
`ip_address` VARCHAR(16) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
`user_agent` VARCHAR(120) COLLATE utf8mb4_bin DEFAULT NULL,
`last_activity` INT(10) UNSIGNED NOT NULL DEFAULT '0',
`user_data` TEXT COLLATE utf8mb4_bin NOT NULL
) ENGINE=MYISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*DROP TABLE `customer`;*/
CREATE TABLE `customer` (
`cust_id` TINYINT NOT NULL AUTO_INCREMENT,
`cust_first_name` VARCHAR(125) NOT NULL,
`cust_last_name` VARCHAR(125) NOT NULL,
`cust_email` VARCHAR(255) NOT NULL,
`cust_created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
`cust_address` TEXT NOT NULL COMMENT 'card holder address',
PRIMARY KEY (`cust_id`)
) ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

/*DROP TABLE `orders`;*/
CREATE TABLE `orders` (
`order_id` TINYINT NOT NULL AUTO_INCREMENT,
`cust_id` TINYINT NOT NULL,
`order_details` TEXT NOT NULL,
`order_subtotal` TINYINT NOT NULL,
`order_created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
`order_closed` TINYINT NOT NULL COMMENT '0 = open, 1 = closed',
`order_fulfilment_code` VARCHAR(255) NOT NULL COMMENT 'the
unique code sent to a payment provider',
`order_delivery_address` TEXT NOT NULL,
PRIMARY KEY (`order_id`)
) ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

/*DROP TABLE `products`;*/
CREATE TABLE `products` (
`product_id` TINYINT NOT NULL AUTO_INCREMENT,
`product_name` VARCHAR(255) NOT NULL,
`product_code` INT NOT NULL,
`product_description` VARCHAR(255) NOT NULL,
`category_id` TINYINT NOT NULL,
`product_price` INT NOT NULL,
PRIMARY KEY (`product_id`)
) ENGINE=INNODB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

INSERT INTO `products` VALUES (1,'Running Shoes',423423,'These are
some shoes',2,50),(2,'Hawaiian Shirt',34234,'This is a shirt'
,1,25),(3,'Slippers',23134,'Nice comfortable  slippers',2,4),
(4,'Shirt',2553245,'White Office Shirt',1,25),(5,'CodeIgniter
Blueprints',5442342,'Some excellent projects to make and do (in CodeIgniter) - it\'s good value too!',3,25),(6,'Office Suite'
,34234123,'Writer, Calc, Presentation software',5,299),(7,'Anti-Virus',324142,'Get rid of those pesky viruses from your
computer',5,29),(8,'Operating System',12341,'This can run your
computer',5,30),(9,'Web Browser',42412,'Browse the web with a web browser (that\'s what they\'re for)',5,5),(10,'Dinner
set',3241235,'6 dinner plates, 6 side plates, 6 cups',7,45),
(11,'Champagne Glasses',1454352,'Crystal glasses to drink fizzy
French plonk from ',7,45),(12,'Toaster',523234,'Capable of toasting 4 slices at once!',7,35),(13,'Kettle',62546245,'Heat
water with this amazing kettle',7,25);