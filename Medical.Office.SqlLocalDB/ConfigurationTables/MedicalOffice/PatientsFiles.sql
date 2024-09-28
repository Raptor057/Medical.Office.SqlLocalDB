CREATE TABLE [dbo].[PatientsFiles]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY, 
    [IDPatient] BIGINT NULL,
    [FileName] VARCHAR(50) NULL, 
    [FileType] VARCHAR(50) NULL, 
    [FileExtension] NCHAR(10) NULL, 
    [ChunkIndex] INT NULL, 
    [TotalChunks] INT NULL, 
    [Description] NCHAR(10) NULL, 
    [FileData] VARBINARY(MAX) NULL,
    [DateTimeSnap] DATETIME NULL DEFAULT GETDATE(), 
    CONSTRAINT [FK_PatientsFiles_ToPatientData] FOREIGN KEY ([IDPatient]) REFERENCES [PatientData]([ID])
)
