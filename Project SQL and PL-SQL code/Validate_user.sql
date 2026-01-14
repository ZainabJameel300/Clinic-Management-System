 FUNCTION validate_user_DB (p_username IN VARCHAR2, p_password IN VARCHAR2)
RETURN BOOLEAN
AS
  userrole VARCHAR2(20);
  
  CURSOR login_cur IS
    SELECT 'DOCTOR' AS role
    FROM DOCTORS
    WHERE UPPER(TO_CHAR(DOCTOR_ID)) = UPPER(p_username) 
      AND UPPER(FULL_NAME) = UPPER(p_password)
    UNION
    SELECT 'PATIENT' AS role
    FROM PATIENTS
    WHERE UPPER(TO_CHAR(PATIENT_ID)) = UPPER(p_username) 
      AND UPPER(FULL_NAME) = UPPER(p_password)
    UNION
    SELECT 'RECEPTIONIST' AS role
    FROM RECEPTIONISTS
    WHERE UPPER(TO_CHAR(RECEPTIONIST_ID)) = UPPER(p_username) 
      AND UPPER(FULL_NAME) = UPPER(p_password);

BEGIN
  OPEN login_cur;
  FETCH login_cur INTO userrole;
  
  IF login_cur%FOUND THEN
    apex_util.set_session_state('USER_ROLE', userrole);
    CLOSE login_cur;
    RETURN TRUE;
  ELSE
    CLOSE login_cur;
    RETURN FALSE;
  END IF;
  
END;
