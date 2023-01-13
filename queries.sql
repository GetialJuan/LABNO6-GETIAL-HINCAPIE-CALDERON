-- Consultas a la BD

-- Ejercicio No.1 Presente nombre completo de todos los subcontratistas (SubContractor) que tengan 
-- un salario mayor a 3000000. Asegúrese de que se obtengan 5 registros.

SELECT (s_lname|| ' ' ||s_fname) AS nombre_completo FROM subcontractor 
    WHERE salary > 3000000 LIMIT 5;