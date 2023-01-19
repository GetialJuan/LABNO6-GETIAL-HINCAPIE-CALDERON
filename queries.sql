-- Consultas a la BD

-- Ejercicio No.1 Presente nombre completo de todos los subcontratistas (SubContractor) que tengan
-- un salario mayor a 3000000. Asegúrese de que se obtengan 5 registros.

SELECT (s_lname|| ' ' ||s_fname) AS nombre_completo FROM subcontractor
    WHERE salary > 3000000 LIMIT 5;

-- Ejercicio No.2 Presente el nombre de los constructores (Builder) y subcontratistas (SubContractor)
-- que hayan sido contratados en el 2019

SELECT b_lname AS builder_name, s_lname AS subcontractor_name
    FROM (SELECT * FROM hire_info NATURAL JOIN builder) AS builder_name
        NATURAL JOIN subcontractor
            WHERE EXTRACT(YEAR FROM hire_date) = '2019';

-- Ejercicio No.3 Presente de todos los constructores (Builder) que tiene casas en construcción, el resultado en una sola
-- columna llamada Full_Name especifica el nombre de estos constructores que deben estar ordenados por apellido.

-- Un constructor tiene casas en construccion si esta registrado en una casa donde su fecha de finalizacion
-- es mayor a la de contratacion

((SELECT CONCAT(b_lname, ' ', b_lname) AS Full_Name
FROM builder NATURAL JOIN House
        WHERE finish_date < NOW()) ORDER BY b_lname) LIMIT 8;

-- Ejercicio No.4 Presente todos los subcontratistas y los constructores que contrató. Muestre los apellidos
-- de los subcontratistas y los apellidos de los constructores junto con el salario de cada subcontratista.

(SELECT s_fname, b_fname, salary
FROM ((subcontractor NATURAL JOIN Hire_Info) NATURAL JOIN builder)) LIMIT 11;

--- Ejercicio No.5 Obtenga todos los constructores y las casas en construcción, el resultado presenta el apellido
-- del constructor y el nombre de la casa ordenados por apellido. Algunos constructores no tienen casas en
-- construcción deben estar incluidos.

((SELECT b_name, h_name
FROM (HOUSE RIGHT JOIN builder ON builder.bid = house.bid)  -- Para mostrar todos los constructores (asi no tengan casa)
    WHERE finish_date OR FinishDate is NULL) ORDER BY B_Lname) LIMIT 14;    
    
--Ejercicio No.6: Obtenga el nombre y el apellido en un solo campo llamado Full_name de los constructores de las 
--casas llamadas "Nova" o "El cañaduzal". (5 registros)
Select  CONCAT( b_fname,' ', b_lname ) as Full_name from ( builder natural join house ) where (h_name='Nova' or h_name='El cañaduzal') limit 5

--Ejercicio No.7: Presente el nombres de todas las casas que han sido construidas por los constructores cuyo apellido comience con una 'P', 
--el resultado debe incluir el nombre de estos constructores y sus apellidos
Select  h_name,b_fname,b_lname from ( builder natural join house ) where b_lname LIKE 'P%'
 
--Mostrar el nombre del barrio(s) y la ciudad que tiene una casa nombrada “Las consultas”. Asegúrese de que esta casa exista en sus registros y 
--que existan registros coincidentes en Barrios (Neighborhood)
Select n_name,city from ( neighborhood natural join house ) where h_name='Las consultas'
