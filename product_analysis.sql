SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME='Product';
---top 10 products
SELECT TOP 10
    p.Name AS ProductName,
    SUM(d.LineTotal) AS Revenue
FROM Sales.SalesOrderDetail d
JOIN Production.Product p
ON d.ProductID = p.ProductID
GROUP BY p.Name
ORDER BY Revenue DESC;
---rvenue by category
SELECT
    pc.Name AS Category,
    SUM(d.LineTotal) AS Revenue
FROM Sales.SalesOrderDetail d
JOIN Production.Product p
ON d.ProductID=p.ProductID
JOIN Production.ProductSubcategory ps
ON p.ProductSubcategoryID=ps.ProductSubcategoryID
JOIN Production.ProductCategory pc
ON ps.ProductCategoryID=pc.ProductCategoryID
GROUP BY pc.Name
ORDER BY Revenue DESC;
