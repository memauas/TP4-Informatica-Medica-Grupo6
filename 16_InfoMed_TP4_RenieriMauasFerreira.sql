SELECT *
FROM (
    SELECT DISTINCT ON (p.id_paciente)
           p.nombre,
           c.fecha AS fecha_ultima_consulta,
           c.diagnostico
    FROM Pacientes p
    JOIN Consultas c ON c.id_paciente = p.id_paciente
    ORDER BY p.id_paciente, c.fecha DESC
) t
ORDER BY nombre;
