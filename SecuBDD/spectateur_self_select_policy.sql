-- Arthur DEBAR & Alexis PETIT M2 MIAGE

CREATE OR REPLACE FUNCTION spectateur_self_select(
  schema_var IN VARCHAR2,
  table_var IN VARCHAR2)
  RETURN VARCHAR2 
  IS 
  return_val VARCHAR2 (300);
  BEGIN
    IF SYS_CONTEXT('concert_context', 'role') = 'ADMIN21_SPECTATEUR' THEN
      -- on vérifie que le nom de l'utilisateur connecté correspond à un ID 
      -- dans la table spectateur
      return_val := 'id_spectateur = SYS_CONTEXT(''concert_context'', ''nom'')';
    END IF;
  RETURN return_val;
  END spectateur_self_select;
/

BEGIN
DBMS_RLS.ADD_POLICY (
    object_schema => 'admin21',
    object_name => 'spectateur',
    policy_name => 'spectateur_self_select_policy',
    function_schema => 'admin21',
    policy_function => 'spectateur_self_select',
    statement_types => 'select'
);
END;
/