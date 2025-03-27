CREATE DATABASE Biblioteca
ON 
( NAME = Biblioteca, 
  FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Biblioteca.mdf', 
  SIZE = 3MB, 
  FILEGROWTH = 1MB )
LOG ON
( NAME = Biblioteca_Log, 
  FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Biblioteca_log.ldf',
  SIZE = 1MB, 
  FILEGROWTH = 1MB );

BACKUP DATABASE Biblioteca
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\biblioteca.bak'
WITH FORMAT,
MEDIANAME = 'BibliotecaBackup',
NAME = 'Copia de seguridad de Biblioteca';