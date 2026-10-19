SELECT DISTINCT ciudad 
FROM Pacientes 
ORDER BY ciudad;
-- Normalizar variaciones de Buenos Aires ('Bs Aires', 'buenos aires', 'Buenos   Aires', 'Buenos Aiers')
UPDATE Pacientes
SET ciudad = 'Buenos Aires'
WHERE ciudad ILIKE '%buenos%' 
   OR ciudad ILIKE '%bs%aires%' 
   OR ciudad ILIKE '%aiers%';

-- Normalizar variaciones de Córdoba ('Cordoba', 'Córodba', 'Córdoba')
UPDATE Pacientes
SET ciudad = 'Córdoba'
WHERE ciudad ILIKE '%cord%' 
   OR ciudad ILIKE '%córodba%';

-- Normalizar variaciones de Mendoza ('Mendzoa', 'Mendoza')
UPDATE Pacientes
SET ciudad = 'Mendoza'
WHERE ciudad ILIKE '%mend%';

-- Normalizar minúsculas de Rosario ('rosario', 'Rosario')
UPDATE Pacientes
SET ciudad = 'Rosario'
WHERE ciudad ILIKE 'rosario';

-- Normalizar minúsculas de Santa Fe
UPDATE Pacientes
SET ciudad = 'Santa Fe'
WHERE ciudad ILIKE 'santa fe';

SELECT DISTINCT ciudad 
FROM Pacientes 
ORDER BY ciudad;