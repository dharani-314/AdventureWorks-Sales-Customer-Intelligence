-- Total Revenue

SELECT
    SUM(TotalDue) AS Revenue
FROM Sales.SalesOrderHeader;


-- Revenue By Year

SELECT
    YEAR(OrderDate) AS OrderYear,
    SUM(TotalDue) AS Revenue
FROM Sales.SalesOrderHeader
GROUP BY YEAR(OrderDate)
ORDER BY OrderYear;
-- Revenue By Month

SELECT
    YEAR(OrderDate) AS OrderYear,
    MONTH(OrderDate) AS OrderMonth,
    SUM(TotalDue) AS Revenue
FROM Sales.SalesOrderHeader
GROUP BY YEAR(OrderDate),
         MONTH(OrderDate)
ORDER BY OrderYear,
         OrderMonth;