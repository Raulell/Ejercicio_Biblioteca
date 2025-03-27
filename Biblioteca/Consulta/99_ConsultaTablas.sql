SELECT TOP (1000) [PrestamoID]
      ,[SocioID]
      ,[LibroID]
      ,[FechaRetiro]
      ,[FechaDevolucion]
  FROM [Biblioteca].[dbo].[TablaPrestamos]

  SELECT TOP (1000) [SocioID]
      ,[Nombre]
      ,[Direccion]
      ,[Telefono]
      ,[Mail]
      ,[Alta]
  FROM [Biblioteca].[dbo].[TablaSocios]

  SELECT TOP (1000) [LibroID]
      ,[Titulo]
      ,[AutorID]
      ,[FechaEdicion]
  FROM [Biblioteca].[dbo].[TablaLibros]

  SELECT TOP (1000) [AutorID]
      ,[Nombre]
  FROM [Biblioteca].[dbo].[TablaAutores]


