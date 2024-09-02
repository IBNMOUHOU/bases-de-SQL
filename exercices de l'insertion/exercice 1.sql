/*  Questions pour cet exercice
A partir du tableau précédemment présenté, créez la requête permettant l’insertion des commandes dans la table des commandes.
Attention, la clé primaire se générant automatiquement, il n’est pas nécessaire de la placer dans votre requête.
Utilisez returning pour vérifier le résultat.*/ 


INSERT INTO commandes (commande_id, client_id, produit_id, quantite, prix_total)

VALUES

(2001,101,501,2,1799.98),

(2001,101,502,1,120.50 ),

(2002,103,501,3,2699.97),

(2003,101,503,1,5.49),

(2004,104,504,5,1750.00)

RETURNING *;
