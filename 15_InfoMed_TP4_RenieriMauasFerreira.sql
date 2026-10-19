SELECT m.nombre AS medicamento,
       COUNT(r.id_receta) AS cantidad_recetas
FROM Medicamentos m
JOIN Recetas r ON r.id_medicamento = m.id_medicamento
GROUP BY m.id_medicamento, m.nombre
ORDER BY cantidad_recetas DESC, m.nombre
LIMIT 2;
