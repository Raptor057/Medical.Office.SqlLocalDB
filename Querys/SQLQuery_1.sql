SELECT TOP (1000) [Id]
      ,[IDPatient]
      ,[FileName]
      ,[FileType]
      ,[FileExtension]
      ,[Description]
      ,[FileData]
      ,[DateTimeUploaded]
  FROM [Medical.Office.SqlLocalDB].[dbo].[PatientsFiles]

--   INSERT INTO [dbo].[PatientsFiles]
--     ([IDPatient], [FileName], [FileType], [FileExtension], [Description], [FileData], [DateTimeUploaded])
-- VALUES
--     (1, 'example.jpg', 'Imagen', 'jpg', 'Archivo de ejemplo', 
--     0xFFD8FFE000104A46494600010101004800480000FFDB004300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432, 
--     GETDATE());

SELECT * from PatientsFiles WHERE IDPatient = ''