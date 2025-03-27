-- Consulta para enviar recordatorios de cortesía a los socios con préstamos que vencen en los próximos 5 días
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
    AND p.FechaDevolucion IS NOT NULL;  -- Aseguramos que la fecha de devolución no sea nula