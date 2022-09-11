DROP DATABASE IF EXISTS ecommerce_db;

CREATE DATABASE ecommerce_db;

USE ecommerce_db;

CREATE TABLE category(
    id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(30) NOT NULL
);

CREATE TABLE product(
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    product_name VARCHAR(30) NOT NULL,
    price DECIMAL NOT NULL --how to validate decimal??
    stock INT NOT NULL DEFAULT 10 --how to validate default??
    category_id INT -- references category model's id
);

CREATE TABLE tag(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    tag_name VARCHAR(30)
);

CREATE TABLE product_tag(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_id INT -- references product model's id
    tag_id
    INT -- references tag model's id
);