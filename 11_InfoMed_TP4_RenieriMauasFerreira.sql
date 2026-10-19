SELECT nombre FROM Medicamentos WHERE id_medicamento IN (
SELECT id_medicamento FROM Recetas
WHERE id_medico = 2
GROUP BY id_medicamento
HAVING COUNT(*) > 1);
