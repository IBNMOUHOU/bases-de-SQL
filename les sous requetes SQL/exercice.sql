--exercice--
/*
1 - Trouver tous les produits (production.product) qui ont été vendus en quantité supérieure à 15 unités lors d'une seule transaction (c'est-à-dire dans une seule ligne de SalesOrderDetail).

2 - La table SalesOrderDetail contient des détails sur chaque vente, y compris le ProductID vendu, la quantité (OrderQty) et le prix unitaire (UnitPrice).
trouver les produits qui ont un chiffre d'affaires total (quantité multipliée par le prix unitaire) supérieur au chiffre d'affaires moyen de tous les produits.

3 - Dans la base de données AdventureWorks, la table Product contient des informations sur chaque produit, y compris le ProductID, le Name et le StandardCost. La table SalesOrderDetail contient des détails sur chaque commande, y compris le ProductID, la UnitPrice et la quantité commandée (OrderQty).
trouver tous les produits dont le coût standard est supérieur au prix moyen auquel ils ont été vendus.*/


--corriger--
SELECT P.ProductID, P.Name, P.ListPrice

FROM production.Product AS P

WHERE P.ProductID IN ( SELECT S.ProductID

FROM Sales.SalesOrderDetail AS S

WHERE S.OrderQty > 15 );




SELECT S.ProductID, SUM(S.OrderQty * S.UnitPrice) AS TotalRevenue

FROM Sales.SalesOrderDetail AS S

GROUP BY S.ProductID

HAVING SUM(S.OrderQty * S.UnitPrice) > (

SELECT AVG(OrderQty * UnitPrice) * COUNT(DISTINCT ProductID) FROM Sales.SalesOrderDetail )

ORDER BY TotalRevenue DESC;





SELECT P.ProductID, P.Name, P.StandardCost

FROM production.Product AS P

WHERE P.StandardCost < (

SELECT AVG(S.UnitPrice)

FROM Sales.SalesOrderDetail AS S

WHERE S.ProductID = P.ProductID )

ORDER BY P.Name;
