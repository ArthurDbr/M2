-- Arthur DEBAR & Alexis PETIT M2 MIAGE

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
    nom_context:=SYS_CONTEXT('USERENV','SESSION_USER');
    DBMS_SESSION.SET_CONTEXT('concert_context', 'nom', nom_context);
    SELECT GRANTED_ROLE INTO role_context
    FROM DBA_ROLE_PRIVS
    WHERE UPPER(GRANTEE)=nom_context AND GRANTED_ROLE LIKE 'ADMIN21%';
    DBMS_SESSION.SET_CONTEXT('concert_context', 'role', role_context);
  END set_concert;
END set_concert_context_package;
/