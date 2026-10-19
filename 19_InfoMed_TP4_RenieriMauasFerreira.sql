SELECT m.nombre, COUNT(DISTINCT c.id_paciente) AS cant_pacientes 
FROM Medicos m
LEFT JOIN Consultas c ON c.id_medico = m.id_medico
GROUP BY m.id_medico, m.nombre
ORDER BY cant_pacientes DESC;
