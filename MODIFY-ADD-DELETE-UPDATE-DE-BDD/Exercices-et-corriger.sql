--EX 1 --
/* On souhaite créer une nouvelle colonne « Premium » dans la table « Produit ».

Si le produit a un prix supérieur à 200 €, alors la colonne prendra pour valeur « True ». Sinon la valeur sera à « False » (valeur par défaut)*/

--EX2 --
/* Une erreur s’est glissé dans les commandes. Vous devez supprimez toutes les références à la commande « 2001 » dans la table « commandes »*/

--EX3 --
/* On souhaite créer une nouvelle colonne « VIP » dans la table « Client ».

Si la client a acheté pour plus de 1 000 € de produits, alors VIP doit être égal à True. Sinon, VIP est égal à False (valeur par défaut).*/


-- corriger--


--1-- 
ALTER TABLE produits ADD COLUMN Premium BOOLEAN DEFAULT FALSE;

UPDATE produits SET Premium = TRUE
WHERE prix > 200;

--2--
DELETE FROM commandes WHERE Commandeid = 2001;

--3--
ALTER TABLE person ADD COLUMN VIP BOOLEAN DEFAULT FALSE;


UPDATE person SET VIP = TRUE
WHERE clientid IN (
SELECT clientid
FROM commandes
GROUP BY clientid
HAVING SUM(prix_total) > 1000
);