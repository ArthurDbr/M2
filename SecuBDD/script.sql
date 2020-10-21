DROP TABLE spectateur;
DROP TABLE concert;
DROP TABLE salle;


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

CREATE ROLE admin21_spectateur;
CREATE ROLE admin21_concert;
CREATE ROLE admin21_salle;


INSERT INTO spectateur VALUES ('USER5', 'Boular', 'Pascal', 26, '2 rue du billard');
INSERT INTO spectateur VALUES ('USER6', 'Bon', 'Jean', 35, '87 avenue de la plage');
INSERT INTO spectateur VALUES ('USER7', 'Pelouse', 'Thierry', 44,'62 rue du plateau');

INSERT INTO concert VALUES ('conc1', 'salle1', 'Woodkid', 1, '2020/12/20');
INSERT INTO concert VALUES ('conc2', 'salle2', 'Shaka Ponk', 1, '2021/01/01');
INSERT INTO concert VALUES ('conc3', 'salle1', 'Elephanz', 1, '2021/05/01');
INSERT INTO concert VALUES ('conc4', 'salle2', 'Radio Moscow', 0, '2023/01/01');

INSERT INTO salle VALUES ('salle1', 2000);
INSERT INTO salle VALUES ('salle2', 500);

Select * from salle;


 
