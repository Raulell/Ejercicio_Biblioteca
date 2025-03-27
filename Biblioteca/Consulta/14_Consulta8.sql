-- Consulta para listar los libros prestados
SELECT 
    l.LibroID,
    l.Titulo,
    l.AutorID,
    p.PrestamoID,
    p.SocioID,
    p.FechaRetiro,
    p.FechaDevolucion
FROM 
    TablaPrestamos p
JOIN 
    TablaLibros l ON p.LibroID = l.LibroID
WHERE 
    p.FechaRetiro IS NOT NULL;  -- Solo los libros que aún están prestados
