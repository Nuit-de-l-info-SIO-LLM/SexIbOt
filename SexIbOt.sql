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
    PRIMARY KEY (id_type) 
);
CREATE TABLE partie( -- CREATION DE LA TABLE PARTIE
    id_partie int,
    id_utilisateur int NOT NULL,
    PRIMARY KEY (id_partie),
    FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id_utilisateur)
);
CREATE TABLE carte( -- CREATION DE LA TABLE CARTE
    id_carte int,
    type_carte int,
    famille int,
    lien_carte varchar(200),
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
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (1, 1, 1, 'https://cdn.discordapp.com/attachments/1047875519787585598/1047990519998992395/preservatif-masculin-1.png');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (2, 1, 2, 'https://cdn.discordapp.com/attachments/1047875519787585598/1047993313518702653/preservatif-feminim-2png.png');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (3, 1, 3, 'https://cdn.discordapp.com/attachments/1047875519787585598/1047993722836623400/contraception-pillule-3.png');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (4, 1, 4, 'https://cdn.discordapp.com/attachments/1047875519787585598/1047994196256100382/sterilet-moche-4.png');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (5, 1, 5, 'https://cdn.discordapp.com/attachments/1047875519787585598/1047994702512803932/implant-5.png');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (6, 1, 6, 'https://cdn.discordapp.com/attachments/1047875519787585598/1047995482032574474/contraceptive-skin-patch.jpg');
-- INSERTION DES CARTES DES MALADIES
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (7, 2, 7, 'https://discord.com/channels/1047875519191973999/1047875519787585598/1047995791194734702');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (8, 2, 8, 'https://discord.com/channels/1047875519191973999/1047875519787585598/1047999112521461790');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (9, 2, 9, 'https://discord.com/channels/1047875519191973999/1047875519787585598/1047995791194734702');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (10, 2, 10, 'https://discord.com/channels/1047875519191973999/1047875519787585598/1047995791194734702');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (11, 2, 11, 'https://discord.com/channels/1047875519191973999/1047875519787585598/1047999112521461790');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (12, 2, 12, 'https://discord.com/channels/1047875519191973999/1047875519787585598/1047995791194734702');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (13, 2, 13, 'https://discord.com/channels/1047875519191973999/1047875519787585598/1047995791194734702');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (14, 2, 14, 'https://discord.com/channels/1047875519191973999/1047875519787585598/1047996256284332063');
-- INSERTION DES CARTES DU DEPISTAGE
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (15, 3, 15, 'https://discord.com/channels/1047875519191973999/1047875519787585598/1047996256284332063');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (16, 3, 16, 'https://discord.com/channels/1047875519191973999/1047875519787585598/1047999112521461790');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (17, 3, 17, 'https://discord.com/channels/1047875519191973999/1047875519787585598/1047999112521461790');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (18, 3, 18, 'https://discord.com/channels/1047875519191973999/1047875519787585598/1047999112521461790');
INSERT INTO carte (id_carte, type_carte, famille, lien_carte) VALUES (19, 3, 19, 'https://discord.com/channels/1047875519191973999/1047875519787585598/1047996256284332063');



