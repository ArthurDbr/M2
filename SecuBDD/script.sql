DROP TABLE spectateur;
DROP TABLE concert;
DROP TABLE salle;

DROP ROLE admin21_directeur;
DROP ROLE admin21_vendeur_tickets;
DROP ROLE admin21_spectateur;
DROP ROLE admin21_invite;

GRANT SELECT, INSERT, UPDATE, DELETE ON salle TO admin21_directeur;
GRANT SELECT, INSERT, UPDATE, DELETE ON concert TO admin21_directeur;
--TODO qcces spectqteur de directeur--

GRANT SELECT, INSERT, UPDATE, DELETE ON spectateur TO admin21_vendeur;
GRANT SELECT ON salle TO admin21_vendeur;
GRANT SELECT ON salle TO admin21_vendeur;


CREATE TABLE spectateur(
    id_spectateur VARCHAR(64),
    last_name VARCHAR(64),
    first_name VARCHAR(64),
    age INTEGER,
    adress VARCHAR(500),
    CONSTRAINT spectateur_pk PRIMARY KEY(id_spectateur)
);

CREATE TABLE concert (
    id_concert VARCHAR(300),
    id_salle VARCHAR(300),
    artist VARCHAR(300),
    confirmed INTEGER,
    date_concert VARCHAR(20),
    CONSTRAINT concert_pk PRIMARY KEY (id_concert)
);

CREATE TABLE salle (
    id_salle VARCHAR(300),
    capacity INTEGER,
    CONSTRAINT salle_pk PRIMARY KEY (id_salle)
);

CREATE ROLE admin21_directeur;
CREATE ROLE admin21_vendeur_tickets;
CREATE ROLE admin21_spectateur;
CREATE ROLE admin21_invite;

INSERT INTO spectateur VALUES ('USER5', 'Boular', 'Pascal', 26, '2 rue du billard');
INSERT INTO spectateur VALUES ('USER6', 'Bon', 'Jean', 35, '87 avenue de la plage');
INSERT INTO spectateur VALUES ('USER7', 'Pelouse', 'Thierry', 44,'62 rue du plateau');

INSERT INTO concert VALUES ('conc1', 'salle1', 'Woodkid', 1, '2020/12/20');
INSERT INTO concert VALUES ('conc2', 'salle2', 'Shaka Ponk', 1, '2021/01/01');
INSERT INTO concert VALUES ('conc3', 'salle1', 'Elephanz', 1, '2021/05/01');
INSERT INTO concert VALUES ('conc4', 'salle2', 'Radio Moscow', 0, '2023/01/01');

INSERT INTO salle VALUES ('salle1', 2000);
INSERT INTO salle VALUES ('salle2', 500);

CREATE OR REPLACE CONTEXT concert_context USING set_concert_context_package;

CREATE OR REPLACE PACKAGE set_concert_context_package IS PROCEDURE set_concert;
END;
/

CREATE OR REPLACE PACKAGE BODY set_concert_context_package IS
  PROCEDURE set_concert 
  IS
    role_context VARCHAR(64);
    nom_context VARCHAR(64);
  BEGIN
    nom_context := SYS_CONTEXT('USERENV','SESSION_USER');
    DBMS_SESSION.SET_CONTEXT('concert_context', 'nom', nom_context);

    SELECT GRANTED_ROLE INTO role_context
    FROM DBA_ROLE_PRIVS
    WHERE UPPER(GRANTEE) = nom_context and granted_role like 'ADMIN21%';
    DBMS_SESSION.SET_CONTEXT('concert_context', 'role', role_context);
  END set_concert;
END set_concert_context_package;
/

GRANT EXECUTE ON admin21.set_concert_context_package TO user1, user2, user3, user4, user5, user6, user7

CREATE OR REPLACE FUNCTION only_confirmed_concert(
  schema_var in VARCHAR2,
  table_var in VARCHAR2)
RETURN VARCHAR2
IS 

SELECT * FROM concert WHERE confirmed = 1;


 
