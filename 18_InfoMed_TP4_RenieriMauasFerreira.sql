SELECT med.nombre AS medicamento,
       t.total_recetas,
       m.nombre AS medico,
       p.nombre AS paciente
FROM Recetas r
JOIN Medicamentos med ON med.id_medicamento = r.id_medicamento
JOIN Medicos m ON m.id_medico = r.id_medico
JOIN Pacientes p ON p.id_paciente = r.id_paciente
JOIN (
    SELECT id_medicamento, COUNT(*) AS total_recetas
    FROM Recetas
    GROUP BY id_medicamento
) t ON t.id_medicamento = r.id_medicamento
ORDER BY t.total_recetas DESC, med.nombre, m.nombre, p.nombre;
