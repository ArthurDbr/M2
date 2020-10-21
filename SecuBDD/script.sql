CREATE TABLE spectateur
{
    id_spectateur VARCHAR(64),
    last_name VARCHAR(64),
    first_name VARCHAR(64),
    age INTEGER,
    adress VARCHAR(500),
    CONSTRAINT spectateur_pk PRIMARY KEY(id_spectateur)
};

INSERT INTO spectateur VALUES ('USER5', 'Boular', 'Pascal', 26, '2 rue du billard');
INSERT INTO spectateur VALUES ('USER6', 'Bon', 'Jean', 35, '87 avenue de la plage');
INSERT INTO spectateur VALUES ('USER7', 'Pelouse', 'Thierry', 44,'62 rue du plateau');