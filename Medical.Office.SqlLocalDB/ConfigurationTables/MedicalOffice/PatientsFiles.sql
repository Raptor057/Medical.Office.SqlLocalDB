CREATE TABLE [dbo].[PatientsFiles]
(
    [Id] BIGINT NOT NULL PRIMARY KEY IDENTITY, 
    [IDPatient] BIGINT NOT NULL, -- Asegúrate de que siempre tenga un ID de paciente
    [FileName] NVARCHAR(Max) NOT NULL, -- Ampliar para nombres de archivo más largos
    [FileType] NVARCHAR(Max) NOT NULL, -- Tipo de archivo siempre debe estar definido
    [FileExtension] NVARCHAR(10) NOT NULL, -- Extensión siempre requerida
    [ChunkIndex] INT NOT NULL, 
    [TotalChunks] INT NOT NULL, 
    [Description] NVARCHAR(Max) NULL, -- Ampliar descripción
    [FileData] VARBINARY(MAX) NOT NULL, -- Los datos del archivo son obligatorios
    [DateTimeSnap] DATETIME NOT NULL DEFAULT GETDATE(), 
    CONSTRAINT [FK_PatientsFiles_ToPatientData] FOREIGN KEY ([IDPatient]) REFERENCES [PatientData]([ID])
);
