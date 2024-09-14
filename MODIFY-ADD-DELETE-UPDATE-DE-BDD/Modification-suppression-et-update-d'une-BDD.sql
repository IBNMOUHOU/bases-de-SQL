UPDATE produits SET description = 'description pour le produit 501' WHERE produitid = 501
ALTER TABLE produits ADD COLUMN description VARCHAR(255)
select * 
from produits

UPDATE produits SET description = 'description pour le produit 501' WHERE produitid = 501;
UPDATE produits SET description = 'description pour le produit 502' WHERE produitid = 502;
UPDATE produits SET description = 'description pour le produit 503' WHERE produitid = 503;
UPDATE produits SET description = 'description pour le produit 504' WHERE produitid = 504;
UPDATE produits SET description = 'description pour le produit 505' WHERE produitid = 505;

select * 
from produits 

select * 
from person

ALTER TABLE person DROP CONSTRAINT IF EXISTS clients_email_client_check;
ALTER TABLE person DROP CONSTRAINT IF EXISTS person_email_de_client_check
ALTER TABLE person ALTER COLUMN email_de_client SET DEFAULT 'non communiqué';

INSERT INTO person (clientid , nom_client , cart_fidelite)
VALUES (106 , 'Farncois Petit' , TRUE );


select *
from person 

select *
from commandes

ALTER TABLE commandes ADD COLUMN quantite INTEGER

INSERT INTO commandes (ligneid,commandeid,clientid,produitid,quantite,prix_total)
VALUES 
(1,2001,101,501,2,1799.98), 
(2,2001,101,502,1,120.50),
(3,2002,103,501,3,2699.97),
(4,2003,101,503,1,5.49),
(5,2004,104,504,5,1750.00);


SELECT *
FROM commandes

UPDATE commandes SET prix_total = produits.prix * commandes.quantite
FROM produits
WHERE commandes.produitid = produits.produitid


select *
from commandes