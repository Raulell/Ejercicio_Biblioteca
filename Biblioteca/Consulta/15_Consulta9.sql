-- Consulta para listar los libros disponibles en la biblioteca (no prestados)
SELECT 
    l.LibroID,
    l.Titulo,
    l.AutorID,
	p.FechaRetiro
FROM 
    TablaLibros l
LEFT JOIN 
    TablaPrestamos p ON l.LibroID = p.LibroID
WHERE 
    p.FechaRetiro IS NULL;  -- Solo los libros que no tienen préstamos activos