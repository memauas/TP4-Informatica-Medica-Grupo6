SELECT ciudad, COUNT(*) AS total_pacientes
FROM Pacientes
GROUP BY ciudad;

CREATE INDEX idx_pacientes_ciudad
ON Pacientes (ciudad);
