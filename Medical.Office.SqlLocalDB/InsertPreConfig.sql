/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
-- Query para insertar datos despues del despliegue de la DB


-- Para la tabla Genders
INSERT INTO Genders (Gender)
SELECT 'Masculino' WHERE NOT EXISTS (SELECT 1 FROM Genders WHERE Gender = 'Masculino');
INSERT INTO Genders (Gender)
SELECT 'Femenino' WHERE NOT EXISTS (SELECT 1 FROM Genders WHERE Gender = 'Femenino');

-- Para la tabla usersUserStatuses
INSERT INTO UserStatuses (TypeUserStatuses)
SELECT 'Activo' WHERE NOT EXISTS (SELECT 1 FROM UserStatuses WHERE TypeUserStatuses = 'Activo');
INSERT INTO UserStatuses (TypeUserStatuses)
SELECT 'Inactivo' WHERE NOT EXISTS (SELECT 1 FROM UserStatuses WHERE TypeUserStatuses = 'Inactivo');

-- Para la tabla Roles
INSERT INTO Roles (RolesName)
SELECT 'Programador' WHERE NOT EXISTS (SELECT 1 FROM Roles WHERE RolesName = 'Programador');
INSERT INTO Roles (RolesName)
SELECT 'Doctor' WHERE NOT EXISTS (SELECT 1 FROM Roles WHERE RolesName = 'Doctor');
INSERT INTO Roles (RolesName)
SELECT 'Enfermera' WHERE NOT EXISTS (SELECT 1 FROM Roles WHERE RolesName = 'Enfermera');
INSERT INTO Roles (RolesName)
SELECT 'Secretaria' WHERE NOT EXISTS (SELECT 1 FROM Roles WHERE RolesName = 'Secretaria');
INSERT INTO Roles (RolesName)
SELECT 'Asistente' WHERE NOT EXISTS (SELECT 1 FROM Roles WHERE RolesName = 'Asistente');

-- Para la tabla Positions
INSERT INTO Positions (PositionName)
SELECT 'Programador' WHERE NOT EXISTS (SELECT 1 FROM Positions WHERE PositionName = 'Programador');

-- Para la tabla Specialties
INSERT INTO Specialties (Specialty)
SELECT 'Desarollador' WHERE NOT EXISTS (SELECT 1 FROM Specialties WHERE Specialty = 'Desarollador');

-- Para perfil desarollador
INSERT INTO Users (Usr, Psswd, [Name], Lastname, [Role], Position, Specialtie)
SELECT 'rarriaga', '1A09DF34D876AC0562CDE4723F105436C2D02616ADD65EA50EF83707DFE59BB5', 'Rogelio', 'Arriaga', 'Programador', 'Programador', 'Desarollador'
WHERE NOT EXISTS (
    SELECT 1 FROM Users 
    WHERE Usr = 'rarriaga' 
    AND Psswd = '1A09DF34D876AC0562CDE4723F105436C2D02616ADD65EA50EF83707DFE59BB5' 
    AND [Name] = 'Rogelio' 
    AND Lastname = 'Arriaga' 
    AND [Role] = 'Programador' 
    AND Position = 'Programador' 
    AND Specialtie = 'Desarollador'
);
