SELECT nombre, COUNT(*) as cantidad FROM Recetas r
INNER JOIN Medicos m ON r.id_medico = m.id_medico
GROUP BY (m.id_medico);
