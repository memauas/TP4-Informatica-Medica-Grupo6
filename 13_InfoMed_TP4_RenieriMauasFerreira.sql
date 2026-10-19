SELECT e.nombre AS especialidad,
       COUNT(m.id_medico) AS cantidad_medicos
FROM Especialidades e
JOIN Medicos m ON m.especialidad_id = e.id_especialidad
GROUP BY e.id_especialidad, e.nombre
HAVING COUNT(m.id_medico) > 2
ORDER BY cantidad_medicos DESC;
