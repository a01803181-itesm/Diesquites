DROP DATABASE IF EXISTS Diesquites;
CREATE DATABASE Diesquites;
USE Diesquites;

DROP TABLE IF EXISTS Inventario;
CREATE TABLE Inventario
(
	id_recurso INT AUTO_INCREMENT PRIMARY KEY,
	stock INT,
	nombre_recurso VARCHAR(100),
	last_updated DATE
);

DROP TABLE IF EXISTS Staff;
CREATE TABLE Staff
(
	id_staff INT AUTO_INCREMENT PRIMARY KEY,
	nombre_staff VARCHAR(30),
	fecha_nacimiento DATE,
	email VARCHAR(30),
	telefono VARCHAR(12),
	fecha_ingreso DATE,
	fecha_salida DATE NULL
);

DROP TABLE IF EXISTS Cliente;
CREATE TABLE Cliente
(
	id_cliente INT AUTO_INCREMENT PRIMARY KEY,
	nombre_cliente VARCHAR(30),
	password VARCHAR(256),
	fecha_nacimiento DATE,
	email VARCHAR(30),
	telefono VARCHAR(12)
);

DROP TABLE IF EXISTS Domicilio;
CREATE TABLE Domicilio
(
	id_domicilio INT AUTO_INCREMENT,
	id_cliente INT,
	alias VARCHAR(30),
	municipio VARCHAR(30),
	colonia VARCHAR(30),
	CP INT,
	calle VARCHAR(30),
	no_exterior VARCHAR(15),
	no_interior VARCHAR(15),
	referencia TEXT NULL,
	FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
	PRIMARY KEY (id_domicilio, id_cliente)
);

DROP TABLE IF EXISTS Pedido;
CREATE TABLE Pedido
(
	id_pedido INT AUTO_INCREMENT PRIMARY KEY,
	id_cliente INT,
	id_staff INT,
	fecha TIMESTAMP,
	monto FLOAT,
	delivered BOOL,
	medio VARCHAR(30),
	FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
	FOREIGN KEY (id_staff) REFERENCES Staff(id_staff)
);


DROP TABLE IF EXISTS Item;
CREATE TABLE Item
(
	id_item INT AUTO_INCREMENT PRIMARY KEY,
	id_pedido INT,
	codigo_item INT,
	nombre VARCHAR(30),
	cantidad INT,
	FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido)
);