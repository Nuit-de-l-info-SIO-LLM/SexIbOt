CREATE DATABASE SexIbOt; -- CREATION DE LA DATABASE
USE SexIbOt; -- UTILISATION DE LA BASE DE DONNEES

CREATE TABLE carte( -- CRREATION DE LA TABLE CARTE
    id_carte int,
    type_carte varchar,
    famille varchar,
    lien_carte varchar,
    PRIMARY KEY (id_carte),
    FOREIGN KEY (type_carte) REFERENCES famille(id_type),
    FOREIGN KEY (famille) REFERENCES enfant(id_famille)
);
CREATE TABLE partie( -- CREATION DE LA TABLE PARTIE
    id_partie int,
    id_utilisateur NOT NULL,
    PRIMARY KEY (id_partie),
    FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id_utilisateur)
);
CREATE TABLE utilisateur( -- CREATION DES UTILISATEURS
    id_utilisateur int,
    listcarte varchar,
    PRIMARY KEY (id_utilisateur)
);
CREATE TABLE enfant( -- CREATION DES ENFANTS
    id_enfant int,
    nom_enfant varchar,
    PRIMARY KEY (id_famille)
);
CREATE TABLE famille( -- CREATION DE LA TABLE FAMILLE
    id_type int,
    nom_type varchar,
    PRIMARY KEY (id_typeDeContraception)
);

-- INSERTION DANS LA BASE DE DONNEE - ENFANT

-- INSERTION DES ENFANTS DE FAMILLE
INSERT INTO enfant(id_enfant, nom_enfant) VALUES (1, 'Masculin');
INSERT INTO enfant(id_enfant, nom_enfant) VALUES (2, 'Féminin');
INSERT INTO enfant(id_enfant, nom_enfant) VALUES (3, 'Pillule');
INSERT INTO enfant(id_enfant, nom_enfant) VALUES (4, 'Stérilet');
INSERT INTO enfant(id_enfant, nom_enfant) VALUES (5, 'Implant');
INSERT INTO enfant(id_enfant, nom_enfant) VALUES (6, 'Pilule du lendemain');
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
INSERT INTO enfant(id_enfant, nom_enfant) VALUES (15, 'Planning fammiliale');
INSERT INTO enfant(id_enfant, nom_enfant) VALUES (16, 'centre de santé');
INSERT INTO enfant(id_enfant, nom_enfant) VALUES (17, 'centre de planification');
INSERT INTO enfant(id_enfant, nom_enfant) VALUES (18, 'centre de dépistage');
INSERT INTO enfant(id_enfant, nom_enfant) VALUES (19, 'centre de traitement');


-- INSERTION A FAIRE - CARTE :

-- INSERTION DES CARTES PRESERVATIF
INSERT INTO carte (id_carte, famille, enfant, lien_carte) VALUES (1, 'préservatif', 1 , 'lien');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (2, 'préservatif', 2, 'lien');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (3, 'préservatif', 3, 'lien');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (4, 'préservatif', 4, 'lien');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (5, 'préservatif', 5, 'lien');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (6, 'préservatif', 6, 'lien');
-- INSERTION DES CARTES DES MALADIES
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (5, 'maladie', 7, 'lien');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (6, 'maladie', 8, 'lien');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (7, 'maladie', 9, 'lien');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (8, 'maladie', 10, 'lien');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (9, 'maladie', 11, 'lien');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (10, 'maladie', 12, 'lien');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (11, 'maladie', 13, 'lien');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (12, 'maladie', 14, 'lien');
-- INSERTION DES CARTES DU DEPISTAGE
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (10, 'dépistage', 15, 'lien');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (11, 'dépistage', 16, 'lien');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (12, 'dépistage', 17, 'lien');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (13, 'dépistage', 18, 'lien');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (14, 'dépistage', 19, 'lien');



