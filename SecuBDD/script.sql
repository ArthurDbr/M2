-- Arthur DEBAR & Alexis PETIT M2 MIAGE

@drop

CREATE TABLE spectateur
(
    id_spectateur VARCHAR(64),
    last_name VARCHAR(64),
    first_name VARCHAR(64),
    age INTEGER,
    adress VARCHAR(500),
    CONSTRAINT spectateur_pk PRIMARY KEY(id_spectateur)
);

CREATE TABLE concert 
(
    id_concert VARCHAR(300),
    id_salle VARCHAR(300),
    artist VARCHAR(300),
    confirmed INTEGER,
    date_concert VARCHAR(20),
    CONSTRAINT concert_pk PRIMARY KEY (id_concert)
);

CREATE TABLE salle 
(
    id_salle VARCHAR(300),
    capacity INTEGER,
    CONSTRAINT salle_pk PRIMARY KEY (id_salle)
);

INSERT INTO spectateur VALUES ('USER5', 'Boular', 'Pascal', 26, '2 rue du billard');
INSERT INTO spectateur VALUES ('USER6', 'Bon', 'Jean', 35, '87 avenue de la plage');
INSERT INTO spectateur VALUES ('USER7', 'Pelouse', 'Thierry', 44,'62 rue du plateau');

INSERT INTO concert VALUES ('conc1', 'salle1', 'Woodkid', 1, '2020/12/20');
INSERT INTO concert VALUES ('conc2', 'salle2', 'Shaka Ponk', 1, '2021/01/01');
INSERT INTO concert VALUES ('conc3', 'salle1', 'Elephanz', 1, '2021/05/01');
INSERT INTO concert VALUES ('conc4', 'salle2', 'Radio Moscow', 0, '2023/01/01');

INSERT INTO salle VALUES ('salle1', 2000);
INSERT INTO salle VALUES ('salle2', 500);

--View limited_spectateur
CREATE OR REPLACE VIEW limited_spectateur
AS SELECT id_spectateur, last_name, first_name
FROM spectateur;

CREATE ROLE admin21_directeur;
CREATE ROLE admin21_vendeur_tickets;
CREATE ROLE admin21_spectateur;
CREATE ROLE admin21_invite;

-- GRANT admin21_invite 
GRANT SELECT ON salle TO admin21_invite;
GRANT SELECT ON concert TO admin21_invite;

-- GRANT admin21_spectateur 
GRANT admin21_invite TO admin21_spectateur;
GRANT SELECT ON spectateur TO admin21_spectateur;

-- GRANT admin21_vendeur_tickets 
GRANT admin21_spectateur TO admin21_vendeur_tickets;
GRANT INSERT, UPDATE, DELETE ON spectateur TO admin21_vendeur_tickets;

-- GRANT admin21_directeur 
GRANT SELECT, INSERT, UPDATE, DELETE ON salle TO admin21_directeur;
GRANT SELECT, INSERT, UPDATE, DELETE ON concert TO admin21_directeur;
GRANT SELECT ON limited_spectateur TO admin21_directeur;


GRANT admin21_directeur TO user1 WITH ADMIN OPTION;
GRANT admin21_vendeur_tickets TO user2;
GRANT admin21_vendeur_tickets TO user3;
GRANT admin21_spectateur TO user5;
GRANT admin21_spectateur TO user6;
GRANT admin21_spectateur TO user7;
GRANT admin21_invite TO user8;

@context

GRANT EXECUTE ON ADMIN21.set_concert_context_package TO user1, user2, user3, user4, user5, user6, user7;

@only_confirmed_concert_policy
@spectateur_self_select_policy










 
