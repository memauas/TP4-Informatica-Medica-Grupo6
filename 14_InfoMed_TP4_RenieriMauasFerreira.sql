SELECT nombre,
       DATE_PART('year', AGE(fecha_nacimiento)) AS edad
FROM Pacientes
WHERE DATE_PART('year', AGE(fecha_nacimiento)) > (
    SELECT AVG(DATE_PART('year', AGE(fecha_nacimiento)))
    FROM Pacientes
)
ORDER BY edad DESC;
