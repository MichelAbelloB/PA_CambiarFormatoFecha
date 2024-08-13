CREATE PROCEDURE CambiarFormatoFecha
AS
BEGIN
    -- Actualizar la columna fecha con el nuevo formato
    UPDATE Tabla_base
    SET fecha = REPLACE(CONVERT(VARCHAR(10), fecha, 120), '-', '/');

    -- Seleccionar para ver el resultado
    SELECT * FROM Tabla_base;
END;
