DECLARE
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM appointments
    WHERE patient_id = :P58_PATIENT_ID
      AND doctor_id = :P58_DOCTOR_ID
      AND appointment_date = :P58_APPOINTMENT_DATE
      AND appointment_time = :P58_APPOINTMENT_TIME;

    RETURN v_count = 0;
END;
