-- instruccion para crear la base de datos (DDL)
CREATE DATABASE IF NOT EXISTS consultorioDental;
-- seleccionamos la base de datos (DDL)
USE consultorioDental;

-- Instruccion para crear la tabla Paciente

-- Instruccion para crear la tabla Dentistas
CREATE TABLE Dentista (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    edad TINYINT NOT NULL,
    telefono VARCHAR(15),
    email VARCHAR(255),
    especialidad VARCHAR(255) NOT NULL,
    cedula VARCHAR(20) NOT NULL,
    consultorioAsignado VARCHAR(255) NOT NULL,
    experiencia VARCHAR(255) NOT NULL,
    turno VARCHAR(50) NOT NULL,
    salario INT NOT NULL
);
-- Instruccion para crear la tabla Paciente

CREATE TABLE Paciente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    edad TINYINT NOT NULL,
    telefono VARCHAR(15),
    email VARCHAR(255),
    numeroSeguroSocial VARCHAR(20) NOT NULL,
    tipoSangre VARCHAR(5) NOT NULL,
    expediente BOOLEAN NOT NULL,
    seguroGastosMedicos BOOLEAN NOT NULL,
    cita DATETIME NOT NULL,
    alergias BOOLEAN NOT NULL
);

/* 
La instruccion o query INSERT nos permite agregar o insertar registors (filas) en nuestra tabla. 

INSERT INTO nombreTabla + parametros + valores
*/

INSERT INTO Dentista (
    nombre ,
    apellido ,
    edad ,
    telefono ,
    email ,
    especialidad ,
    cedula ,
    consultorioAsignado ,
    experiencia ,
    turno ,
    salario 
)
VALUES ("Simi","Lares",35,"4654","similares@gmail.com","odontologia","dddddsg","504","avanzado","matutino","600"),("house","loco",55,"4654","house@gmail.com","odontologia cirujano","5+6","544","avanzado","matutino","800"),
("angel","gux",28,"46545795","angeles@gmail.com","odontologia pedriatico","robotfasf65","510","avanzado","Nocturno","600");

/*

SELECT nos permite recuperar datos de una base de datos. Es una de las operaciones mas comunes.

SELECT + datosABuscar + FROM dondeVoyABuscar + condicion o filtro especial

*/

-- consulta select para mostrar todos los nombres de la tabla dentista
SELECT nombre FROM Dentista;

-- consulta select para mostrar todos los nombres de la tabla dentista
SELECT apellido FROM Dentista;

-- consulta SELECT para mostrar multiples datos de la tabla dentista (separar por comas)
SELECT nombre,apellido FROM Dentista ORDER BY nombre ASC;

-- Consulta SELECt para mostrar todos los dentistas con nombre y apellido que ganen mas de 600
SELECT nombre,apellido FROM Dentista WHERE salario>600;

/*
SWLWRW se utiliza para borrar uno o varios registros de la tabla
DELETE + from de dondequiero borrar + filtro o clausula Clausulas en BD (WHERE)

*/

