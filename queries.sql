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