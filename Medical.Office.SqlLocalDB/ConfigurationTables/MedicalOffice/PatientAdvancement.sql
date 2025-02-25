CREATE TABLE [dbo].[PatientAdvancement]
(
  [Id] BIGINT NOT NULL PRIMARY KEY,
  [IDPatient] BIGINT NOT NULL,
  [Concept] VARCHAR(MAX),
  [Quantity] DECIMAL(15,2)
)