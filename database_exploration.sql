SELECT TABLE_SCHEMA,
       TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
ORDER BY TABLE_SCHEMA,TABLE_NAME;
SELECT TOP 5 * FROM Sales.Customer;
SELECT TOP 5 * FROM Sales.SalesOrderHeader;
SELECT TOP 5 * FROM Sales.SalesOrderDetail;
SELECT TOP 5 * FROM Production.Product;
SELECT TOP 5 * FROM Production.ProductCategory;
SELECT TOP 5 * FROM Production.ProductSubcategory;
SELECT TOP 5 * FROM Sales.SalesTerritory;
SELECT column_name
FROM information_schema.columns
WHERE table_name='SalesTerritory'
AND table_schema='Sales';
-- Total Customers

SELECT COUNT(*) AS TotalCustomers
FROM Sales.Customer;

-- Total Orders

SELECT COUNT(*) AS TotalOrders
FROM Sales.SalesOrderHeader;

-- Total Products

SELECT COUNT(*) AS TotalProducts
FROM Production.Product;

-- Total Order Items

SELECT COUNT(*) AS TotalOrderItems
FROM Sales.SalesOrderDetail;


