CREATE VIEW vista_pacientes_edad AS
SELECT
   id_paciente,
   nombre,
   fecha_nacimiento,
   id_sexo,
   numero,
   calle,
   ciudad,
   EXTRACT(YEAR FROM AGE(CURRENT_DATE, fecha_nacimiento))::INT AS edad
FROM Pacientes;

SELECT * FROM vista_pacientes_edad;