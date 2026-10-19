SELECT COUNT(*) as cantidad, descripcion as sexo, ciudad FROM Pacientes p
INNER JOIN SexoBiologico s ON p.id_sexo=s.id_sexo
GROUP BY (descripcion,ciudad);
