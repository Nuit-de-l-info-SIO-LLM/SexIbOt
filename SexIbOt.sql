CREATE DATABASE SexIbOt;
USE SexIbOt;

CREATE TABLE carte(
    id_carte int,
    type_carte varchar,
    famille varchar,
    lien_carte varchar,
    PRIMARY KEY (id_carte)
);
CREATE TABLE partie(
    id_partie int,
    id_utilisateur NOT NULL,
    PRIMARY KEY (id_partie)
);
CREATE TABLE 