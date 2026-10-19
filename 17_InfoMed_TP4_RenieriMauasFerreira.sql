SELECT m.nombre AS medico,
       p.nombre AS paciente,
       COUNT(c.id_consulta) AS total_consultas
FROM Consultas c
JOIN Medicos m ON m.id_medico = c.id_medico
JOIN Pacientes p ON p.id_paciente = c.id_paciente
GROUP BY m.id_medico, m.nombre, p.id_paciente, p.nombre
ORDER BY m.nombre, p.nombre;
