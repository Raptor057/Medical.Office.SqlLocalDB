CREATE TABLE [dbo].[ActiveMedications]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY, 
    [IDPatient] BIGINT NOT NULL, 
    [AactiveMedicationsData] VARCHAR(MAX) NULL, 
    [DateTimeSnap] DATETIME NULL DEFAULT GetDate()
)
