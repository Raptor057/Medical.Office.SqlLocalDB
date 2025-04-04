-- Tabla de DetalleVentas
CREATE TABLE DetalleVentas (
    DetalleID INTEGER PRIMARY KEY IDENTITY(1,1),
    VentaID INTEGER NOT NULL,
    ProductoID INTEGER NOT NULL,
    Cantidad INTEGER NOT NULL,
    Subtotal REAL NOT NULL,
    IDPatient BIGINT NULL
    FOREIGN KEY (VentaID) REFERENCES Ventas(VentaID),
    FOREIGN KEY (ProductoID) REFERENCES Productos(ProductoID)
);