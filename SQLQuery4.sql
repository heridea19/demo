--CREATE DATABASE STAAS;

USE STAAS;
/*
CREATE TABLE User_Role (
	id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	name_role VARCHAR(15)
);

CREATE TABLE Users (
	id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	user_login VARCHAR(25) UNIQUE NOT NULL,
	user_password VARCHAR(25) NOT NULL,
	full_name VARCHAR(100) UNIQUE NOT NULL,
	role_id INT NOT NULL,
	FOREIGN KEY (role_id) REFERENCES User_Role(id)
);

CREATE TABLE Suppliers (
	id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	supplier_name VARCHAR(50) NOT NULL
);

CREATE TABLE Manufacturers (
	id INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
	manufacturer_name VARCHAR(50) NOT NULL
);

CREATE TABLE Products (
	id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	article INT NOT NULL,
	product_name VARCHAR(50) NOT NULL,
	unit VARCHAR(10) DEFAULT 'шт.' NOT NULL,
	cost INT NOT NULL,
	id_supplier INT NOT NULL,
	id_manufacturer INT NOT NULL,
	product_category VARCHAR(50) NOT NULL CHECK (product_category IN (('Мужская обувь'), ('Женская обувь'))),
	sale INT,
	quantity INT,
	product_description TEXT,
	FOREIGN KEY (id_supplier) REFERENCES Suppliers(id),
	FOREIGN KEY (id_manufacturer) REFERENCES Manufacturers(id)
);

CREATE TABLE PickUp_Point (
	id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	adress VARCHAR(150) not null
);
*/
CREATE TABLE Orders (
	id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	article INT NOT NULL,
	order_date DATE NOT NULL,
	delivery_date DATE NOT NULL,
	id_pickup_point INT NOT NULL,
	fullname_user VARCHAR(100) NOT NULL,
	pincode INT NOT NULL,
	status_order VARCHAR(50) NOT NULL CHECK (status_order IN (('Завершен'), ('Новый'))),
	FOREIGN KEY (id_pickup_point) REFERENCES PickUp_Point(id),
	FOREIGN KEY (fullname_user) REFERENCES Users(full_name)
);