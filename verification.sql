SELECT * FROM plat ORDER BY prix DESC;
SELECT * FROM categorie;
SELECT p.nom , p.prix , c.nom_categorie  FROM plat p FULL JOIN categorie c ON p.categorie_id = c.id_categorie;