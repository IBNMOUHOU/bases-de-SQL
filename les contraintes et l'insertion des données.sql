
INSERT INTO produits(produitid,nom_produit,categorie,prix)
VALUES 
(510,'Produit D','Categorie D',-10.00)


/*ERROR:  La ligne en échec contient (510, Produit D, Categorie D, -10.00).la nouvelle ligne de la relation « produits » viole la contrainte de vérification « produits_prix_check » 

ERREUR:  la nouvelle ligne de la relation « produits » viole la contrainte de vérification « produits_prix_check »
SQL state: 23514
Detail: La ligne en échec contient (510, Produit D, Categorie D, -10.00).*/



INSERT INTO produits(produitid,nom_produit,categorie,prix)
VALUES 
(510,'Produit D','Categorie D',-10.00)


INSERT INTO produits(produitid,nom_produit,prix)
VALUES 
(510,'Produit C',40.00)


INSERT INTO produits(produitid,nom_produit,categorie,prix)
VALUES 
(510,'Ordinateur Portable','categorie C',30.00)

/*ERROR:  La clé « (nom_produit)=(Ordinateur Portable) » existe déjà.la valeur d'une clé dupliquée rompt la contrainte unique « produits_nom_produit_key » 

ERREUR:  la valeur d'une clé dupliquée rompt la contrainte unique « produits_nom_produit_key »
SQL state: 23505
Detail: La clé « (nom_produit)=(Ordinateur Portable) » existe déjà.*/


INSERT INTO produits(produitid,nom_produit,categorie,prix)
VALUES 
(510,'Ordinateur Portable','categorie C',30.00)

-- l'erreur existe déja pour produitid --
INSERT INTO produits(produitid,nom_produit,categorie,prix)
VALUES 
(501,'Produit A','categorie A',10.00)

--ERROR:  La clé « (produitid)=(501) » existe déjà.la valeur d'une clé dupliquée rompt la contrainte unique « produits_pkey » 
--ERREUR:  la valeur d'une clé dupliquée rompt la contrainte unique « produits_pkey »
--SQL state: 23505
--Detail: La clé « (produitid)=(501) » existe déjà.

-- l'erreur existe déja pour produitid --
INSERT INTO produits(produitid,nom_produit,categorie,prix)
VALUES 
(501,'Produit A','categorie A',10.00)

--ERROR:  La clé « (produitid)=(501) » existe déjà.la valeur d'une clé dupliquée rompt la contrainte unique « produits_pkey » 
--ERREUR:  la valeur d'une clé dupliquée rompt la contrainte unique « produits_pkey »
--SQL state: 23505
--Detail: La clé « (produitid)=(501) » existe déjà.

-- l'erreur existe déja pour produitid --
INSERT INTO produits(produitid,nom_produit,categorie,prix)
VALUES 
(501,'Produit A','categorie A',10.00)

-- INSERTION DE DONNEES --
INSERT INTO person(email_de_client,clientid,cart_fidelite,nom_client)
VALUES
('jean.dupont@gmail.com',101,TRUE,'jean dupont'),
('marie.martin@gmail.com',102,FALSE,'marie matrin'),
('paul.lefevre@gmail.com',103,TRUE,'paul lefevre'),
('sophie.durand@gmail.com',104,TRUE,'sophie durand'),
('luc.bernard@gmail.com',105,TRUE,'luc bernard')
RETURNING *


select *
from produits

-- INSERTION DE DONNEES --
INSERT INTO produits(produitid,nom_produit,categorie,prix)
VALUES
(501,'Ordinateur Portable','Electronique',899.99),
(502,'Chaise de bureau','Mobilier',120.50),
(503,'Stylo à bille','Fournitures de bureau',1.20),
(504,'Cafetière','Electroménager',45.00),
(505,'Téléphone','Electronique',650.75)


CREATE TABLE commandes(
ligneid SERIAL PRIMARY KEY ,
commandeid INTEGER NOT NULL,
clientid INTEGER NOT NULL,
produitid INTEGER NOT NULL,
prix_total DECIMAL(10,2) NOT NULL,
FOREIGN KEY (clientid) REFERENCES person(clientid),
FOREIGN KEY (produitid) REFERENCES produits(produitid)
);

select *
from person

-- ajouter des contraintes --
CREATE TABLE person(
clientid INTEGER PRIMARY KEY,
nom_client VARCHAR(255) NOT NULL,
email_de_client VARCHAR(255) CHECK(email_de_client LIKE '%@%'),
cart_fidelite BOOLEAN DEFAULT FALSE
)


-- ajouter des contraintes --
CREATE TABLE produits(
produitid INTEGER PRIMARY KEY,
nom_produit VARCHAR(255) UNIQUE,
categorie VARCHAR(50) NOT NULL,
prix NUMERIC(10,2) CHECK(prix >= 0)
)


CREATE TABLE produits(
produitid INTEGER,
nom_produit VARCHAR(255),
categorie VARCHAR(50),
prix NUMERIC(10,2)
)


