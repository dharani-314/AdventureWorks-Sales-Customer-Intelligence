WITH customer_sales AS
(
    SELECT
        CustomerID,
        SUM(TotalDue) AS Revenue
    FROM Sales.SalesOrderHeader
    GROUP BY CustomerID
),
customer_segments AS
(
    SELECT
        CustomerID,
        Revenue,
        NTILE(4) OVER(ORDER BY Revenue DESC) AS Segment
    FROM customer_sales
)
SELECT
    Segment,
    COUNT(*) AS CustomerCount,
    MIN(Revenue) AS MinRevenue,
    MAX(Revenue) AS MaxRevenue
FROM customer_segments
GROUP BY Segment
ORDER BY Segment;