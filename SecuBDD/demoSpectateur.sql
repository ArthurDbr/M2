EXECUTE admin21.set_concert_context_package.set_concert;

SELECT SYS_CONTEXT('concert_context','nom') FROM DUAL;
SELECT SYS_CONTEXT('concert_context','role') FROM DUAL;

/** TEST SUR LA TABLE SPECTATEUR **/
prompt Select dans la table spectateur : ne retourne que le user connecté
SELECT * FROM admin21.spectateur;

COMMIT;


