SELECT medicamento, cantidad_recetas
FROM (
    SELECT m.nombre AS medicamento,
           COUNT(r.id_receta) AS cantidad_recetas,
           DENSE_RANK() OVER (ORDER BY COUNT(r.id_receta) DESC) AS posicion
    FROM Medicamentos m
    JOIN Recetas r ON r.id_medicamento = m.id_medicamento
    GROUP BY m.id_medicamento, m.nombre
) t
WHERE posicion <= 2
ORDER BY cantidad_recetas DESC, medicamento;
