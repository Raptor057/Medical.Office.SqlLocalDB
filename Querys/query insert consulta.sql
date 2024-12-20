-- SELECT TOP (1000) [Id]
--       ,[IDPatient]
--       ,[IDDoctor]
--       ,[AppointmentDate]
--       ,[AppointmentTime]
--       ,[ReasonForVisit]
--       ,[AppointmentStatus]
--       ,[Notes]
--       ,[CreatedAt]
--       ,[UpdatedAt]
--       ,[TypeOfAppointment]
--   FROM [Medical.Office.SqlLocalDB].[dbo].[MedicalAppointmentCalendar]


DECLARE @DateTime DATETIME
DECLARE @Date DATE
DECLARE @Time TIME

SET @DateTime = (SELECT GETDATE() + CAST((RAND() * 20 - 10) AS INT))

-- Extraer la fecha
SET @Date = CAST(@DateTime AS DATE)

-- Extraer la hora
SET @Time = CAST(@DateTime AS TIME(0))

-- Mostrar los resultados
--SELECT @DateTime AS OriginalDateTime, @Date AS ExtractedDate, @Time AS ExtractedTime


INSERT INTO MedicalAppointmentCalendar(IDPatient,IDDoctor,AppointmentDate,AppointmentTime,ReasonForVisit,AppointmentStatus,Notes,TypeOfAppointment)
VALUES (1,30004,@Date,@Time,'Test','Test','Activo','Consulta')