CREATE OR REPLACE FUNCTION UUID RETURN VARCHAR2 IS
  caracteres CONSTANT VARCHAR2(16) := '0123456789abcdef';
  resultado VARCHAR2(36);
BEGIN
  FOR i IN 1..8 LOOP
    resultado := resultado || SUBSTR(caracteres, TRUNC(DBMS_RANDOM.VALUE(1, 16)), 1);
  END LOOP;
  
  resultado := resultado || '-';
  
  FOR i IN 1..4 LOOP
    resultado := resultado || SUBSTR(caracteres, TRUNC(DBMS_RANDOM.VALUE(1, 16)), 1);
  END LOOP;
  
  resultado := resultado || '-4';
  
  FOR i IN 1..3 LOOP
    resultado := resultado || SUBSTR(caracteres, TRUNC(DBMS_RANDOM.VALUE(1, 16)), 1);
  END LOOP;
  
  resultado := resultado || '-';
  
  resultado := resultado || SUBSTR('89ab', TRUNC(DBMS_RANDOM.VALUE(1, 5)), 1);
  
  FOR i IN 1..3 LOOP
    resultado := resultado || SUBSTR(caracteres, TRUNC(DBMS_RANDOM.VALUE(1, 16)), 1);
  END LOOP;
  
  resultado := resultado || '-';
  
  FOR i IN 1..12 LOOP
    resultado := resultado || SUBSTR(caracteres, TRUNC(DBMS_RANDOM.VALUE(1, 16)), 1);
  END LOOP;

  RETURN resultado;
END generarUUID;