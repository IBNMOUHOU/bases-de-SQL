--1--créer une vue qui affiche uniquement certains détails des produits, notamment leur nom, leur couleur, leur prix standard et leur taille.

CREATE VIEW v_ProductDetails AS
SELECT Name AS ProductName, Color, StandardCost, Size
FROM Production.Product;

--2-- Après avoir créé la vue, ajouter la sous-catégorie du produit à la vue. Pour ce faire, vous devez d'abord joindre la table Product à la table ProductSubcategory.

CREATE OR REPLACE VIEW v_ProductDetails AS
SELECT p.Name AS productName, p.Color, p.StandardCost, p.Size, s.Name AS subCategoryName
FROM Production.Product AS p
INNER JOIN Production.ProductSubcategory AS s
ON p.ProductSubcategoryID = s.ProductSubcategoryID;

