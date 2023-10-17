USE generation;
SHOW tables;
SELECT *FROM Students;
SELECT *FROM Countries;
SELECT *FROM IdTypes;
SELECT *FROM Courses;
SELECT *FROM Modules;
SELECT *FROM Courses_has_Students;
-- Join. Una clausula JOIN se usa para seleccionar datos de dos o más tablas, en función de la relación entre tablas
-- INNER JOIN / JOIN natural. Selecciona registros que tienen valores que coinciden en ambas tablas.
-- A intersección begin

SELECT Students.*,Countries.* FROM Students 
JOIN Countries ON Students.nationality=Countries.idCountries;

SELECT 
concat(Students.name," ",Students.last_name) AS "Nombre completo",
CONCAT(Students.address,",") AS "Direccion",
Students.birthdate AS "Fecha de nacimiento"
FROM Students 
JOIN Countries ON Students.nationality=Countries.idCountries;


SELECT 
count(Countries.name) AS "count"
FROM Students 
JOIN Countries ON Students.nationality=Countries.idCountries
WHERE Countries.name= "united States of America";
-- 1. Encontrar a todo estudiante que tenga como nacionalidad el país 33, mostrando su nombre, apellido y nacionalidad
-- 2. Encontrar a todo estudiante en países que inicien con Ca
-- 3. Obtener información de estudiantes y obtener el código del curso que estén cursando

-- 1
SELECT Students.name,
		Students.last_name,
        Countries.name
 FROM Students 
 RIGHT JOIN Countries 
 ON Students.nationality=Countries.idCountries WHERE Countries.idCountries="33";
 
 -- 2
 SELECT Students.*,
        Countries.name,
        Countries.code
 FROM Students 
 JOIN Countries 
 ON Students.nationality=Countries.idCountries  WHERE Countries.name LIKE "CA%";
 
-- 3. Obtener información de estudiantes y obtener el código del curso que estén cursando
  SELECT Students.*,
  Courses_has_Students.course_code
 FROM Students 
 JOIN Courses_has_Students 
 ON Students.idStudent=Courses_has_Students.students_id_student;
 
 -- separacion
 SELECT Students.name,
		Students.last_name,
        Countries.name
 FROM Students 
 RIGHT JOIN Countries 
 ON Students.nationality=Countries.idCountries ;
 -- aplicando left joint
  SELECT Students.name,
		Students.last_name,
        Countries.name
 FROM Countries 
 LEFT JOIN Students 
 ON Students.nationality=Countries.idCountries ;
 
 /* Obtener el total de estudiantes por cada módulo
	-t1 students (contar estudiante)
    -t2 courses has students
    -t3 courses
    -t4 modules
 */
 
SELECT *FROM Students;
SELECT *FROM Courses_has_Students;
SELECT *FROM Courses;
SELECT *FROM Modules;
-- SELECT *FROM Countries;
-- SELECT *FROM IdTypes;


 SELECT 
 t4.name AS "Módulo",
	COUNT(t1.idStudent) AS "Total de estudiantes por modulo"
    FROM Students as t1
 JOIN Courses_has_Students as t2 ON t1.idStudent=t2.students_id_student
 JOIN Courses AS t3 ON t2.course_code=t3.code
 JOIN Modules AS t4 ON t3.module_code= t4.code GROUP BY t4.code
 -- ORDER BY COUNT(t1.idStudent) DESC;
 ORDER BY t4.name ASC;
 
 