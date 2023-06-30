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
	( tipo_de_alojamiento VARCHAR (200),
     descripcion VARCHAR (200),
    costo FLOAT,
    imagenes VARCHAR (15),
    id_alojamiento INT AUTO_INCREMENT,
    PRIMARY KEY (id_alojamiento));
     
CREATE TABLE lugares
	
	( nombre_del_lugar VARCHAR (30),
      tipo_de_lugares VARCHAR(20),
     id_lugares INT AUTO_INCREMENT,
	informacion VARCHAR(250) NOT NULL,
	imagenes VARCHAR(20),
    esta_al_aire_libre boolean,
	PRIMARY KEY (id_lugares));

CREATE TABLE visita
	(id_alojamiento INT,
    fecha DATE,
    dni INT,
     id_visita  INT AUTO_INCREMENT,
    id_lugares INT,
    PRIMARY KEY (id_visita),
	FOREIGN KEY (dni)	 
      REFERENCES usuario (dni),
	FOREIGN KEY (id_lugares)
		REFERENCES lugares(id_lugares));
        
INSERT INTO usuario (nombre, apellido,dni,gmail)
VALUES ("Valentina", "Perez",12345678, "Valentinaperez@gmail.com"),
	("Pamela","Gomez",23456789, "Pamelagomez@gamil.com"),
    ("Camila", "Martinez", 34567899, "Camilamartinez@gmail.com"),
    ("Gaston", "Sanches", 34567892, "Gastonsanches@gmail.com"),
    ("Marco", "Ponce", 34567891, "Marcoponce@gmail.com"),
    ("Rafael", "Ramirez", 34567893, "Rafaelramirez@gmail.com"),
    ("Ivan", "Quiroga", 34567894, "Ivanquiroga@gmail.com");
    

INSERT INTO alojamiento (tipo_de_alojamiento, descripcion, costo,imagenes)
VALUES ("casa", "dos dormitorios cocina livin comedor dos baños y pieta",12000,"casa1.png" ),
	("departamento", "con pileta cocina living",30000, "departamento.jpg"),
    ("cabaña", " dos habitacines cocina dos baños", 40000, "cabaña.jpg"),
    ("hotel", "dos habitaciones pileta climatisada", 12000, "hotel.jpg"),
    ("casa", "dos habitaciones cocina living comedor" ,30000, "casa.jpg"),
    ("cabaña", "dos habitaciones cocina living comedor" ,30009, "casa4.jpg");


INSERT INTO lugares (nombre_del_lugar, tipo_de_lugares, informacion, imagenes, esta_al_aire_libre)
VALUES ("playas de oro", "balneario", " es un rio donde la gente disfruta de los dias lindo", "rio.jpg1", true),
	( "centro", "ciudad", "es un lugar donde la gente va hacer comparas", "centro.jpg", true),
    ("cucu", "monumento", "lugar turisto situado en el centro viejo", "cucu.jpg" , true),
    ("el burrito", "monumento", "estatua de un burro que la gente visita como lugar turistico", "burrito.jpg", true),
    ("galeria estrada", "galeia comercial", "se encuentra en el centro y la gente va a comparar ", "estrada.jpg", false),
    ("La aerosilla", "excursion", "lagente va a pasear y conocer la ciudad","aerosilla.jpg",true);

INSERT INTO visita ( fecha, dni, id_lugares)
VALUES ( "2020-07-04", 12345678, "1" ),
	( "2020-06-12",23456789, "2"),
    ("2020-05-12", 34567899, "3"),
    ( "2020-08-23", 34567892,"4"),
    ( "2020-09-01", 34567891, "5"),
    ( "2020-02-05", 34567893, "6");