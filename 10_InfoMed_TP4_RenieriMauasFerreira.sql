SELECT nombre, fecha, diagnostico FROM Consultas c
Inner Join Pacientes p ON c.id_paciente = p.id_paciente
WHERE fecha >='2024-08-01'
AND fecha<'2024-09-01';
