CREATE TABLE plat (
    id_plat SERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prix DECIMAL(10,2) NOT NULL
);
INSERT INTO plat(nom ,prix) VALUES ('Romazava',7000),('Ravitoto sy henakisoa', 8000),('Akoho sy voanio', 8500),('Mi sao', 6000),('Soupe chinoise', 5000),('Mofo gasy', 1000),('Ranonampango' , 500);



