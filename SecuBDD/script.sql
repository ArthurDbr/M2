CREATE TABLE spectateur
{
    id_spectateur VARCHAR(64),
    last_name VARCHAR(64),
    first_name VARCHAR(64),
    age INTEGER,
    adress VARCHAR(500),
    CONSTRAINT spectateur_pk PRIMARY KEY(id_spectateur)
};

CREATE TABLE concert (
    id_concert VARCHAR(300),
    id_salle VARCHAR(300),
    artist VARCHAR(300),
    confirmed VARCHAR(300),
    date_concert Date,
    CONSTRAINT concert_pk PRIMARY KEY (id_concert)
);

CREATE TABLE salle (
    id_salle VARCHAR(300),
    capacity INTEGER,
    CONSTRAINT salle_pk PRIMARY KEY (id_salle)
)


INSERT INTO spectateur VALUES ('USER5', 'Boular', 'Pascal', 26, '2 rue du billard');
INSERT INTO spectateur VALUES ('USER6', 'Bon', 'Jean', 35, '87 avenue de la plage');
INSERT INTO spectateur VALUES ('USER7', 'Pelouse', 'Thierry', 44,'62 rue du plateau');

INSERT INTO concert VALUES ('conc1', 'salle1', 'Woodkid', true, TO_DATE('YYYYMMDD', '20201220'));
INSERT INTO concert VALUES ('conc2', 'salle2', 'Shaka Ponk', true, TO_DATE('YYYYMMDD', '20210101'));
INSERT INTO concert VALUES ('conc3', 'salle1', 'Elephanz', true, TO_DATE('YYYYMMDD', '20210501'));
INSERT INTO concert VALUES ('conc4', 'salle2', 'Radio Moscow', false, TO_DATE('YYYYMMDD', '20230101'));

INSERT INTO salle VALUES ('salle1', '2000');
INSERT INTO salle VALUES ('salle2', '500');