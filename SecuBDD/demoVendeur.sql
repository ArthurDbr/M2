SELECT * FROM concert WHERE confirmed = 1;

EXECUTE admin21.set_concert_context_package.set_concert;

SELECT SYS_CONTEXT('concert_context','nom') FROM DUAL;
SELECT SYS_CONTEXT('concert_context','role') FROM DUAL;

SELECT * FROM user1.concert;
SELECT * FROM user1.spectateur;
SELECT * FROM user1.salle;

