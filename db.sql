-- help 
-- \?

-- see databases 
-- \l

-- create database
-- CREATE DATABASE [database name]

-- connect to database
--  \c [database name]

-- create table
CREATE TABLE products (
    id INT,
    name VARCHAR(50),
    price INT,
    onSale BOOLEAN
);

-- view all tables in database
--  \d
--  \d [table name]

-- other commands in sql codeacademy cheatsheet

-- ADD COLUMN -> ALTER TABLE/ ADD COLUMN
-- DELETE COLUMN -> ALTER TABLE/ DROP COLUMN

-- delete table -> DROP TABLE [table name]
-- delete database -> DROP DATATBASE [database name] , cannot be connected to database you are trying to drop


CREATE TABLE restaurants (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    location VARCHAR(50) NOT NULL,
    price_range INT NOT NULL check(price_range >= 1 and price_range <= 5)
);

-- add entry -> INSERT INTO [table name] (column names) VALUES (values)
INSERT INTO restaurants (id, name, location, price_range) VALUES (1, 'mcdonalds', 'new york', 3);

-- view all data from table -> SELECT * FROM [table name]
-- view certain columns -> SELECT [column names] FROM [table name]
SELECT name, price_range FROM restaurants;

-- CONDITIONS FOR DATA RETURNED -> WHERE;
SELECT name FROM restaurants
WHERE price_range > 2;

