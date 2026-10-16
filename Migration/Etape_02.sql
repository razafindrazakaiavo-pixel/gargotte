
CREATE TABLE plat (
    id_plat SERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prix DECIMAL(10,2) NOT NULL
);
INSERT INTO plat(nom ,prix) VALUES ('Romazava',7000),('Ravitoto sy henakisoa', 8000),('Akoho sy voanio', 8500),('Mi sao', 6000),('Soupe chinoise', 5000),('Mofo gasy', 1000),('Ranonampango' , 500);


CREATE TABLE categorie(
    id_categorie SERIAL PRIMARY KEY,
    nom_categorie VARCHAR(100) NOT NULL
);

ALTER TABLE plat
ADD COLUMN categorie_id INT NOT NULL;

ALTER TABLE plat
ADD CONSTRAINT fk_plat_categorie
FOREIGN KEY (categorie_id)
REFERENCES categorie(id_categorie);

INSERT INTO categorie(nom_categorie) VALUES
('Plat malagasy'),
('Plat chinois'),
('Plat Soupe'),
('Dessert et gouter'),
('Boisson');


UPDATE plat
SET categorie_id =1 
WHERE id_plat = 1;

UPDATE plat
SET categorie_id =1 
WHERE id_plat = 2;

UPDATE plat
SET categorie_id =1 
WHERE id_plat = 3;

UPDATE plat
SET categorie_id =2 
WHERE id_plat = 4;

UPDATE plat
SET categorie_id =3 
WHERE id_plat = 5;

UPDATE plat
SET categorie_id =4 
WHERE id_plat = 6;

UPDATE plat
SET categorie_id =5 
WHERE id_plat = 7;
