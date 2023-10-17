-- Este es un comentario en SQL
/* comentario multilinea*/
-- DDL(Data Definition Language) sirve para definir la estructura del la BD

-- Query para crear una base de datos
CREATE DATABASE consultorioDentalCh31;

-- Seleccionar nuestra base de datos
USE consultorioDentalCh31;
-- Crear la table de Dentistas
CREATE TABLE Dentista (
id INT AUTO_INCREMENT PRIMARY KEY, -- Cada que genere un dentista, se le de un nuevo id
nombre VARCHAR (255) NOT NULL, -- ALmacenar una cadena de texti de maximo 255 caracteres, no quede vacio
apellido VARCHAR(255) NOT NULL,
edad TINYINT NOT NULL,
telefono VARCHAR(15) NOT NULL,
email VARCHAR(255) NOT NULL,
especialidad VARCHAR(255) NOT NULL,
cedula VARCHAR(255) NOT NULL,
consultorioAsignado VARCHAR(255) NOT NULL,
experiencia VARCHAR(255) NOT NULL,
turno VARCHAR(25) NOT NULL,
salario INT NOT NULL
);


-- Borra tablas de mi base de datos
-- DROP TABLE apellido;
-- Borra DATABASE de mi base de datos
-- DROP DATABASE encontrarte;
-- Open/Select Script SQL
