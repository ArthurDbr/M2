-- Arthur DEBAR & Alexis PETIT M2 MIAGE

EXECUTE admin21.set_concert_context_package.set_concert;

SELECT SYS_CONTEXT('concert_context','nom') FROM DUAL;
SELECT SYS_CONTEXT('concert_context','role') FROM DUAL;

SET LINE 250;
SET LINESIZE 250;

/** TEST SUR LA TABLE SPECTATEUR **/
prompt
prompt ** TEST SUR LA TABLE SPECTATEUR **
prompt Select dans la table spectateur : Impossible
SELECT * FROM admin21.spectateur;

prompt
prompt Insert dans la table spectateur : Impossible
INSERT INTO admin21.spectateur VALUES ('USER9', 'Joyeux', 'Albet', 65,'3 rue du chateau');

prompt
prompt Delete dans la table spectateur : Impossible
DELETE FROM admin21.spectateur WHERE id_spectateur=1;

/** TEST SUR LA TABLE CONCERT **/
prompt
prompt ** TEST SUR LA TABLE CONCERT **
prompt Select dans la table concert : retourne les concerts confirmé
SELECT * FROM admin21.concert;

prompt 
prompt Insert dans la table concert : Impossible
INSERT INTO admin21.concert VALUES('conc5', 'salle2', 'Linkin Park', 0, TO_DATE('2021-02-15', 'YYYY-MM-DD'));


prompt
prompt Update dans la table concert : Impossible
UPDATE admin21.concert SET confirmed = 1 WHERE id_concert = 'conc5';
SELECT * FROM admin21.concert WHERE id_concert = 'conc5';

prompt
prompt Delete dans la table concert : Impossible
DELETE FROM admin21.concert WHERE id_concert='conc5';

/** TEST SUR LA TABLE SALLE **/
prompt
prompt ** TEST SUR LA TABLE SALLE **
prompt Select dans la table salle : retourne toute les salles
SELECT * FROM admin21.salle;

prompt 
prompt Insert dans la table salle : Impossible
INSERT INTO admin21.salle  VALUES('salle3', 900);
SELECT * FROM admin21.salle;

prompt
prompt Update dans la table salle : Impossible
UPDATE admin21.salle SET capacity = 1000 WHERE id_salle = 'salle3';
SELECT * FROM admin21.salle WHERE id_salle = 'salle3';

prompt
prompt Delete dans la table salle : Impossible
DELETE FROM admin21.salle WHERE id_salle='salle3';
SELECT * FROM admin21.salle;

COMMIT;
