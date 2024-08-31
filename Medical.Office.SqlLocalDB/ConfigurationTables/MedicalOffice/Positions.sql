CREATE TABLE [dbo].[Positions]
(
	[Id] INT NOT NULL  IDENTITY, 
    [PositionName] VARCHAR(MAX) NOT NULL, 
    PRIMARY KEY ([PositionName])
)
