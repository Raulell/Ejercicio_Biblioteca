CREATE PROCEDURE RegistrarDevolucion
    @PrestamoID INT
AS
BEGIN
    -- Verificar si el préstamo existe y está pendiente de devolución.
    IF EXISTS (
        SELECT 1
        FROM TablaPrestamos
        WHERE PrestamoID = @PrestamoID AND FechaRetiro IS NOT NULL
    )
    BEGIN
        -- Registrar la devolución.
        UPDATE TablaPrestamos
        SET FechaRetiro = NULL
        WHERE PrestamoID = @PrestamoID;
        
        PRINT 'Devolución registrada correctamente.';
    END
    ELSE
    BEGIN
        PRINT 'El préstamo no existe o ya ha sido devuelto.';
    END
END;