SELECT 
    m.nombre, 
    COUNT(p.id_paciente) AS consultas, 
    CASE 
        WHEN e.nombre = 'Pediatría' THEN TRUE 
        ELSE FALSE 
    END AS es_pediatra
FROM Medicos m
LEFT JOIN Especialidades e ON m.especialidad_id = e.id_especialidad
LEFT JOIN Consultas c ON m.id_medico = c.id_medico
LEFT JOIN Pacientes p ON c.id_paciente = p.id_paciente 
    AND AGE(CURRENT_DATE, p.fecha_nacimiento) < INTERVAL '18 years'
GROUP BY m.id_medico, m.nombre, e.nombre
ORDER BY consultas DESC;
