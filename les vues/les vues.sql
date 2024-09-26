



--Exemple 1--

CREATE VIEW v_Products_High_Revenue AS
SELECT S.ProductID, SUM(S.OrderQty * S.UnitPrice) AS TotalRevenue
FROM Sales.SalesOrderDetail AS S
GROUP BY S.ProductID
HAVING SUM(S.OrderQty * S.UnitPrice) > (
SELECT AVG(OrderQty * UnitPrice) * COUNT(DISTINCT ProductID) FROM Sales.SalesOrderDetail )
ORDER BY TotalRevenue DESC;

SELECT *
FROM v_Products_High_Revenue;

--Exemple 2--

CREATE VIEW v_SalespersonDetails AS
SELECT businessentityID, territoryID, rowguid, modifieddate
FROM sales.salesperson;


SELECT * 
FROM v_SalespersonDetails;