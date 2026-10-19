SELECT 
    nombre,
    EXTRACT(YEAR FROM AGE(CURRENT_DATE, fecha_nacimiento))::INT AS edad
FROM Pacientes
WHERE EXTRACT(YEAR FROM AGE(CURRENT_DATE, fecha_nacimiento)) < 18;