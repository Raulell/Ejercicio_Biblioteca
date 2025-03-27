--Establece relacion
USE Biblioteca
ALTER TABLE TablaPrestamos
ADD CONSTRAINT FK_Socio
    FOREIGN KEY (SocioID) REFERENCES TablaSocios(SocioID);

USE Biblioteca
ALTER TABLE TablaPrestamos
ADD CONSTRAINT FK_Libro
	FOREIGN KEY (LibroID) REFERENCES TablaLibros(LibroID);

USE Biblioteca
ALTER TABLE TablaLibros
ADD CONSTRAINT FK_AUTOR
	FOREIGN KEY (AutorID) REFERENCES TablaAutores(AutorID);
