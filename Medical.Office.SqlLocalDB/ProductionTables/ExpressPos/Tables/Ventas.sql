CREATE TABLE Ventas (
    VentaID INT IDENTITY(1,1) PRIMARY KEY,
    FechaHora DATETIME DEFAULT GETDATE(),
    Total DECIMAL(18, 2) NOT NULL
);
