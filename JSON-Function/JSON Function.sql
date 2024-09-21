CREATE TABLE detail_commande(
id SERIAL PRIMARY KEY, 
commande_id INTEGER NOT NULL, 
details JSONB NOT NULL ) ;


INSERT INTO detail_commande (commande_id, details)
VALUES
(1, '{"produit": "Vélo", "quantite": 2, "prix_unitaire": 250.50}'), 
(2, '{"produit": "Casque", "quantite": 1, "prix unitaire": 50.00}'),
(3, '{"produit": "Gants", "quantite": 3, "prix_unitaire": 15.20}'),
(4, '{"produit": "Sonnette", "quantite": 1, "prix_unitaire": 8.75}'),
(5, '{"produit": "Lumière", "quantite": 2, "prix_unitaire": 12.90}')



select * 
from detail_commande



select id , details ,
details->>'produit' as nom_produit
from detail_commande



select id , details ,
details->>'produit' as nom_produit,
details->>'prix_unitaire' as prix,
details->>'quantite' as quantitie
from detail_commande


