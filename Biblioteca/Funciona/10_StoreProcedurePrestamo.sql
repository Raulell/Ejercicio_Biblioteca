CREATE PROCEDURE RegistrarPrestamo
    @SocioID INT,
    @LibroID INT
AS
BEGIN
    -- Verificar que el libro está disponible (es decir, no ha sido prestado sin devolverse).
    IF NOT EXISTS (
        SELECT 1
        FROM TablaPrestamos
        WHERE LibroID = @LibroID AND FechaRetiro IS NULL
    )
    BEGIN
        -- Insertar el préstamo.
        INSERT INTO TablaPrestamos (SocioID, LibroID, FechaRetiro, FechaDevolucion)
        VALUES (@SocioID, @LibroID, GETDATE(), DATEADD(DAY, 30, GETDATE()));
        
        PRINT 'Préstamo registrado correctamente.';
    END
    ELSE
    BEGIN
        PRINT 'El libro ya está prestado y no se puede prestar nuevamente.';
    END
END;