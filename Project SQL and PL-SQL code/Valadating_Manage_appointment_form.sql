DECLARE
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM appointments
    WHERE patient_id = :P25_PATIENT_ID
      AND doctor_id = :P25_DOCTOR_ID
      AND appointment_date = :P25_APPOINTMENT_DATE
      AND appointment_time = :P25_APPOINTMENT_TIME;

    RETURN v_count = 0;
END;
