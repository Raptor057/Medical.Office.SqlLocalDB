﻿CREATE TABLE [dbo].[OfficeSetup]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [NameOfOffice] VARCHAR(MAX) NOT NULL, 
    [Address] VARCHAR(MAX) NOT NULL 
)
