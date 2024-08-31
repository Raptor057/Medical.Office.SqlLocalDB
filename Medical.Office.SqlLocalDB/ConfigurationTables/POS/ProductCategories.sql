CREATE TABLE [dbo].[ProductCategories] (
    ProductCategoryId INT PRIMARY KEY IDENTITY(1,1), -- EN: Unique identifier for the product category | ES: Identificador único de la categoría de productos
    CategoryName NVARCHAR(100) NOT NULL -- EN: Name of the category (e.g., Medications, Medical Equipment) | ES: Nombre de la categoría (por ejemplo, Medicamentos, Equipos médicos)
);