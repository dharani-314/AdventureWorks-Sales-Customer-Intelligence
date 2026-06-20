SELECT
    st.Name AS Territory,
    SUM(h.TotalDue) AS Revenue
FROM Sales.SalesOrderHeader h
JOIN Sales.SalesTerritory st
ON h.TerritoryID=st.TerritoryID
GROUP BY st.Name
ORDER BY Revenue DESC;
