CREATE TABLE [dbo].[PaymentTypes] (
    PaymentTypeId INT PRIMARY KEY IDENTITY(1,1), -- EN: Unique identifier for the payment type | ES: Identificador único del tipo de pago
    PaymentTypeName NVARCHAR(50) NOT NULL -- EN: Name of the payment type (e.g., Cash, Card, Transfer) | ES: Nombre del tipo de pago (por ejemplo, Efectivo, Tarjeta, Transferencia)
);