CREATE TABLE [dbo].[Sales] (
    SaleId INT PRIMARY KEY IDENTITY(1,1), -- EN: Unique identifier for the sale | ES: Identificador único de la venta
    ClientId INT, -- EN: Foreign key reference to the client (optional, if the client is registered) | ES: Referencia a la tabla de clientes (opcional, si el cliente está registrado)
    SaleDate DATETIME NOT NULL DEFAULT GETDATE(), -- EN: Date and time of the sale | ES: Fecha y hora de la venta
    TotalAmount DECIMAL(18,2) NOT NULL, -- EN: Total amount of the sale | ES: Monto total de la venta
    PaymentTypeId INT NOT NULL, -- EN: Foreign key reference to the payment type | ES: Referencia a la tabla de tipos de pago
    SaleStatusId INT NOT NULL, -- EN: Foreign key reference to the sale status | ES: Referencia a la tabla de estados de venta
    UserId INT NOT NULL, -- EN: Foreign key reference to the user who made the sale (cashier or receptionist) | ES: Referencia al usuario que realizó la venta (cajero o recepcionista)
    --FOREIGN KEY (ClientId) REFERENCES Clients(ClientId),
    FOREIGN KEY (PaymentTypeId) REFERENCES PaymentTypes(PaymentTypeId),
    FOREIGN KEY (SaleStatusId) REFERENCES SaleStatuses(SaleStatusId)
);