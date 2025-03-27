--Crear TablaPrestamos
USE Biblioteca
CREATE TABLE TablaPrestamos (
    PrestamoID INT PRIMARY KEY IDENTITY(1,1),
    SocioID INT NOT NULL,
    LibroID INT NOT NULL,
    FechaRetiro DATE NULL,
    FechaDevolucion DATE NULL,
)
