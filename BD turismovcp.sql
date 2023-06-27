DROP DATABASE IF EXISTS turismovcp;

CREATE DATABASE IF NOT EXISTS turismovcp;

USE turismovcp;

CREATE TABLE usuario
     (nombre VARCHAR (25) NOT NULL, 
apellido VARCHAR (30) NOT NULL, 
dni INT, 
gmail VARCHAR (30) NOT NULL,
    PRIMARY KEY (dni));
    
CREATE TABLE alojamiento
	(descripcion VARCHAR (200),
    costo FLOAT,
    imagenes VARCHAR (15),
    id_alojamiento INT,
    PRIMARY KEY (id_alojamiento)),
     
CREATE TABLE lugares
	(id_lugares INT,
	informacion VARCHAR(250) NOT NULL,
	imagenes VARCHAR(20),
        esta al aire libre bool,
	PRIMARY KEY (id_lugares));

CREATE TABLE visita
	(id_alojamiento INT,
	id_alojamiento INT,
    fecha DATE,
    dni INT,
    id_lugares INT,
    PRIMARY KEY (id_visita),
    FOREIGN KEY (id_alojamiento) 
		REFERENCES producto (id_producto),
	FOREIGN KEY (id_cliente)
		REFERENCES cliente (dni));
        
INSERT INTO pais (nombre)
VALUES ("Argentina"),
	("Brasil"),
    ("Estados Unidos");

INSERT INTO producto (nombre, color)
VALUES ("Mesa", "Marrón"),
	("Silla", "Marrón"),
    ("Repisa", "Negro"),
    ("Biblioteca", "Marrón oscuro"),
    ("Reposera", "Celeste");

INSERT INTO cliente (dni, nombre, fecha_nac, id_pais)
VALUES (23323490, "Juan", "2003-03-12", 1),
	(29453998, "Sara", "2005-07-05", 3),
    (12384829, "Renata", "1989-04-23", 2),
    (19344233, "Estanislao", "1998-02-28", 1),
    (32849388, "Edson", "2004-04-30", 2);

INSERT INTO compra (cantidad, fecha_compra, id_producto, id_cliente)
VALUES (2, "2020-07-04", 2, 29453998),
	(1, "2020-06-12", 1, 12384829),
    (6, "2020-06-12", 2, 12384829),
    (2, "2020-06-23", 3, 23323490),
    (4, "2020-07-01", 2, 32849388),
    (3, "2020-07-05", 4, 12384829),
    (1, "2020-07-21", 1, 29453998),
    (4, "2020-05-03", 5, 19344233),
    (5, "2020-08-31", 2, 19344233),
    (1, "2020-08-31", 1, 23323490);
    