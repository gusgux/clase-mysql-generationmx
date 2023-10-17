USE business;
SHOW tables;

SELECT * FROM bonus;
SELECT * FROM employee;
SELECT * FROM title;

-- FUNCTIONS 

-- MIN() -Nos permite obtener el valor minimo de una columna
SELECT MIN(salary) AS "salario minimo" FROM employee;
-- Para caracteres con respecto a la tabla ASCII
SELECT MIN(last_name) AS "apellido menor(ASCII)" FROM employee; 

-- MAX() -Nos permite obtener el valor maximo de una columna
SELECT MAX(salary) AS "salario max" FROM employee;
-- Para caracteres con respecto a la tabla ASCII
SELECT MAX(last_name) AS "apellido max(ASCII)" FROM employee; 
-- para usar alias para tablas solo se usa desde la misma sentencia

SELECT last_name FROM employee t1; 

-- GROUP BY. Agrupar información de diferentes columnas o de una misma columna. No podemos agrupar datos como únicos como PK y Ids.

SELECT department FROM employee GROUP BY department; 

SELECT salary,department FROM employee GROUP BY department,salary; 

-- WHERE > IN .Regresa datos donde exista coincidencia con lo que le proporcionamos,entre parentesis
-- ASC . Ordena los valores del menor al mayor
-- DESC. Ordena los valores del mayor al menor
SELECT * FROM employee WHERE employee_id IN(6,1,9,3); 

SELECT * FROM employee WHERE employee_id IN(6,1,9,3) ORDER BY first_name; 

SELECT * FROM employee WHERE department="HR";

SELECT * FROM employee WHERE salary>=300000 ORDER BY first_name DESC;

-- Implementando Group By y Order By
SELECT salary FROM employee
WHERE salary >= 300000
GROUP BY salary
ORDER by salary DESC;

-- LIKE intenta hacer coincidir un string

SELECT * FROM employee WHERE first_name LIKE "%a"; -- registro que finalizan con la letra tal
SELECT * FROM employee WHERE first_name LIKE "b%"; -- registro que inician con la letra tal
SELECT * FROM employee WHERE first_name LIKE "%y%"; -- muestra registros que contengan la letra  indicada


SELECT 
	first_name AS "nombre",
    last_name AS "Apellido",
    salary AS "salario"
FROM employee;

-- CONCAT PARA CONCATENAR DOS COLUMNAS
SELECT 
	CONCAT(employee.first_name," " ,employee.last_name ) AS "nombre completo",
    salary AS "salario"
FROM employee ORDER BY salary ASC;


-- AVERAGE AVG()

SELECT AVG(salary) AS "Salario" FROM employee;	

-- count -nos permite contar los registros que se encuentra en una columna

SELECT COUNT(salary) AS "Numero de registros de salarios" FROM employee;	

-- utlizando varias funciones

SELECT 
	department AS "Departamento",
    SUM(salary) AS "salario total",
     AVG(salary) AS "salario promedio",
     MIN(salary) AS "salario menor",
		MAX(salary) AS "salario mayor",
        COUNT(salary) AS "#de registros de salarios"
From employee GROUP BY department;

-- Calcular el total de bonos de monika  alias en columna con comillas si es a table sin nomre
SELECT * FROM bonus;
SELECT * FROM employee;
SELECT * FROM title;

SELECT SUM(b.bonus_amount) FROM bonus AS b WHERE b.employee_id_fk=1 ;

