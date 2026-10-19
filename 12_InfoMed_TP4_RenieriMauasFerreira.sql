SELECT nombre, COUNT (*) as cant_recetas FROM Recetas r
INNER JOIN Pacientes p ON r.id_paciente = p.id_paciente
GROUP BY (p.id_paciente);
