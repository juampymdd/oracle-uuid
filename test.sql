DECLARE
  myUUID VARCHAR2(36);
BEGIN
  myUUID := UUID;
  DBMS_OUTPUT.PUT_LINE('My UUID: ' || myUUID);
END;