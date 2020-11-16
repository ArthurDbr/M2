-- Arthur DEBAR & Alexis PETIT M2 MIAGE

CREATE OR REPLACE FUNCTION only_confirmed_concert(
  schema_var IN VARCHAR2,
  table_var IN VARCHAR2)
  RETURN VARCHAR2 
  IS 
  return_val VARCHAR2 (300);
  BEGIN
    IF SYS_CONTEXT('concert_context', 'role') = 'ADMIN21_INVITE' OR SYS_CONTEXT('concert_context', 'role') = 'ADMIN21_VENDEUR_TICKETS' OR SYS_CONTEXT('concert_context', 'role') = 'ADMIN21_SPECTATEUR' THEN
      return_val := 'confirmed=1';
    END IF;
  RETURN return_val;
  END only_confirmed_concert;
/

BEGIN
DBMS_RLS.ADD_POLICY (
    object_schema => 'admin21',
    object_name => 'concert',
    policy_name => 'only_confirmed_concert_policy',
    function_schema => 'admin21',
    policy_function => 'only_confirmed_concert',
    statement_types => 'select'
);
END;
/
