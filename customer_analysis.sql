--- top 10 products
SELECT TOP 10
    c.CustomerID,
    SUM(h.TotalDue) Revenue
FROM Sales.Customer c
JOIN Sales.SalesOrderHeader h
ON c.CustomerID=h.CustomerID
GROUP BY c.CustomerID
ORDER BY Revenue DESC;
---customer segemntation
WITH customer_sales AS
(
    SELECT
        CustomerID,
        SUM(TotalDue) AS Revenue
    FROM Sales.SalesOrderHeader
    GROUP BY CustomerID
)
SELECT
    CustomerID,
    Revenue,
    NTILE(4) OVER(
        ORDER BY Revenue DESC
    ) AS Segment
FROM customer_sales;
---- top customer
WITH customer_sales AS
(
    SELECT
        CustomerID,
        SUM(TotalDue) AS Revenue
    FROM Sales.SalesOrderHeader
    GROUP BY CustomerID
)
SELECT
    CustomerID,
    Revenue,
    DENSE_RANK() OVER(
        ORDER BY Revenue DESC
    ) AS CustomerRank
FROM customer_sales;