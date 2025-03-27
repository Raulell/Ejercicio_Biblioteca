CREATE PROCEDURE RegistrarDevolucion
    @PrestamoID INT
AS
BEGIN
    -- Verificar si el pr�stamo existe y est� pendiente de devoluci�n.
    IF EXISTS (
        SELECT 1
        FROM TablaPrestamos
        WHERE PrestamoID = @PrestamoID AND FechaRetiro IS NOT NULL
    )
    BEGIN
        -- Registrar la devoluci�n.
        UPDATE TablaPrestamos
        SET FechaRetiro = NULL
        WHERE PrestamoID = @PrestamoID;
        
        PRINT 'Devoluci�n registrada correctamente.';
    END
    ELSE
    BEGIN
        PRINT 'El pr�stamo no existe o ya ha sido devuelto.';
    END
END;