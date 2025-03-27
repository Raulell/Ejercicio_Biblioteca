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
    p.FechaRetiro IS NOT NULL;  -- Solo los libros que a�n est�n prestados


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
    p.FechaRetiro IS NULL;  -- Solo los libros que no tienen pr�stamos activos


-- Consulta para enviar recordatorios de cortes�a a los socios con pr�stamos que vencen en los pr�ximos 5 d�as
SELECT 
    s.Nombre AS NombreSocio,
    s.Mail AS DireccionEmail,
    l.Titulo AS TituloLibro,
    p.FechaDevolucion
FROM 
    TablaPrestamos p
JOIN 
    TablaSocios s ON p.SocioID = s.SocioID
JOIN 
    TablaLibros l ON p.LibroID = l.LibroID
WHERE 
    p.FechaDevolucion BETWEEN GETDATE() AND DATEADD(DAY, 5, GETDATE())
    AND p.FechaDevolucion IS NOT NULL;  -- Aseguramos que la fecha de devoluci�n no sea nula