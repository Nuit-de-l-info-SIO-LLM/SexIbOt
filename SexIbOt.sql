CREATE DATABASE SexIbOt; -- CREATION DE LA DATABASE
USE SexIbOt; -- UTILISATION DE LA BASE DE DONNEES



CREATE TABLE utilisateur( -- CREATION DES UTILISATEURS
    id_utilisateur int,
    listcarte varchar(100),
    PRIMARY KEY (id_utilisateur)
);
CREATE TABLE enfant( -- CREATION DES ENFANTS
    id_enfant int,
    nom_enfant varchar(40),
    PRIMARY KEY (id_enfant)
);
CREATE TABLE famille( -- CREATION DE LA TABLE FAMILLE
    id_type int,
    nom_type varchar(40),
    PRIMARY KEY (id_type) -- TODO : VERIFIER
);
CREATE TABLE partie( -- CREATION DE LA TABLE PARTIE
    id_partie int,
    id_utilisateur int NOT NULL,
    PRIMARY KEY (id_partie),
    FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id_utilisateur)
);
CREATE TABLE carte( -- CRREATION DE LA TABLE CARTE
    id_carte int,
    type_carte int,
    famille int,
    lien_carte varchar(100),
    PRIMARY KEY (id_carte),
    FOREIGN KEY (type_carte) REFERENCES famille(id_type),
    FOREIGN KEY (famille) REFERENCES enfant(id_famille)
);
-- INSERTION DANS LA BASE DE DONNEE - ENFANT

-- INSERTION DES ENFANTS DE FAMILLE
INSERT INTO enfant(id_enfant, nom_enfant) VALUES (1, 'Préservatif masculin');
INSERT INTO enfant(id_enfant, nom_enfant) VALUES (2, 'Préservatif féminin');
INSERT INTO enfant(id_enfant, nom_enfant) VALUES (3, 'Pillule');
INSERT INTO enfant(id_enfant, nom_enfant) VALUES (4, 'Stérilet');
INSERT INTO enfant(id_enfant, nom_enfant) VALUES (5, 'Implant');
INSERT INTO enfant(id_enfant, nom_enfant) VALUES (6, 'Patch de contraception');
-- INSERTION DES ENFANTS DE FAMILLE
INSERT INTO enfant(id_enfant, nom_enfant) VALUES (7, 'VIH');
INSERT INTO enfant(id_enfant, nom_enfant) VALUES (8, 'Gonorrhée');
INSERT INTO enfant(id_enfant, nom_enfant) VALUES (9, 'Syphilis');
INSERT INTO enfant(id_enfant, nom_enfant) VALUES (10, 'Chlamydia');
INSERT INTO enfant(id_enfant, nom_enfant) VALUES (11, 'Herpes');
INSERT INTO enfant(id_enfant, nom_enfant) VALUES (12, 'Hépatite B');
INSERT INTO enfant(id_enfant, nom_enfant) VALUES (13, 'Hépatite C');
INSERT INTO enfant(id_enfant, nom_enfant) VALUES (14, 'Gardnerella');
-- INSERTION DES ENFANTS DE FAMILLE
INSERT INTO enfant(id_enfant, nom_enfant) VALUES (15, 'Planning familial');
INSERT INTO enfant(id_enfant, nom_enfant) VALUES (16, 'Centre de santé');
INSERT INTO enfant(id_enfant, nom_enfant) VALUES (17, 'Centre de planification');
INSERT INTO enfant(id_enfant, nom_enfant) VALUES (18, 'Centre de dépistage');
INSERT INTO enfant(id_enfant, nom_enfant) VALUES (19, 'Centre de diagnostic');


-- INSERTION A FAIRE - CARTE :
INSERT INTO famille(id_type,nom_type) VALUES (1, "Préservatif");
INSERT INTO famille(id_type,nom_type) VALUES (2, "Maladie");
INSERT INTO famille(id_type,nom_type) VALUES (3, "Dépistage");

-- INSERTION DES CARTES PRESERVATIF
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (1, 1, 1 , 'lien'); -- VERIFIER INSERSIONS
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (2, 1, 2, 'lien');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (3, 1, 3, 'lien');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (4, 1, 4, 'lien');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (5, 1, 5, 'lien');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (6, 1, 6, 'lien');
-- INSERTION DES CARTES DES MALADIES
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (5, 2, 7, 'lien');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (6, 2, 8, 'lien');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (7, 2, 9, 'lien');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (8, 2, 10, 'lien');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (9, 2, 11, 'lien');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (10, 2, 12, 'lien');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (11, 2, 13, 'lien');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (12, 2, 14, 'lien');
-- INSERTION DES CARTES DU DEPISTAGE
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (10, 3, 15, 'lien');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (11, 3, 16, 'lien');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (12, 3, 17, 'lien');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (13, 3, 18, 'lien');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (14, 3, 19, 'lien');



