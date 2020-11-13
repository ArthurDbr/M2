EXECUTE admin21.set_concert_context_package.set_concert;

SELECT SYS_CONTEXT('concert_context','nom') FROM DUAL;
SELECT SYS_CONTEXT('concert_context','role') FROM DUAL;


/** TEST SUR LA TABLE CONCERT **/
prompt Récupère uniquement les concert confirmé : SELECT * FROM concert;
SELECT * FROM admin21.concert;

prompt Impossible d insérrer dans la table concert
INSERT INTO admin21.concert VALUES ('conc5', 'salle2', 'Linkin park', 1, '2021/01/01');

/** TEST SUR LA TABLE SALLE **/
prompt Impossible d insérrer dans la table salle
INSERT INTO admin21.salle VALUES ('salle3', 800);

/** TEST SUR LA TABLE SPECTATEUR **/
prompt
prompt Peut effectuer insere, update, delete et select sur la table spectateur

prompt Insére dans la table spectateur  
INSERT INTO admin21.spectateur VALUES ('USER8', 'Mousse', 'Jean', 36,'1 rue du chapiteau');

COMMIT;


