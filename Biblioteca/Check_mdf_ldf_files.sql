USE Biblioteca;

SELECT 
    name AS FileName,
    type_desc AS FileType,
    physical_name AS FilePath
FROM 
    sys.master_files
WHERE 
    database_id = DB_ID('Biblioteca') AND 
    type IN (0, 1);  -- 0 es para archivos .mdf y 1 es para archivos .ldf