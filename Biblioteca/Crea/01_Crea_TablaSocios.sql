-- Crea TablaSocios
CREATE TABLE TablaSocios (
    SocioID INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(50) NOT NULL,
    Direccion NVARCHAR(50) NOT NULL,
    Telefono NVARCHAR(15) NOT NULL,
    Mail NVARCHAR(50) NOT NULL,
    Alta DATE NOT NULL,
	CONSTRAINT CHK_Mail CHECK (Mail like '%_@_%_._%')
	)

