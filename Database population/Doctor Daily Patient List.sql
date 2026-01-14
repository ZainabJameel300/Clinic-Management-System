CREATE OR REPLACE PROCEDURE doctor_patient_list (
    p_doctor_id      IN  Doctors.doctor_id%TYPE,
    p_date           IN  DATE
)
IS
    v_exists INTEGER;
BEGIN
    -- Check if doctor exists
    SELECT COUNT(*) INTO v_exists
    FROM Doctors
    WHERE doctor_id = p_doctor_id;

    IF v_exists = 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Invalid Doctor ID.');
    END IF;

    -- Display appointments
    FOR rec IN (
        SELECT a.appointment_id, p.full_name AS patient_name, a.appointment_date, a.reason, a.status
        FROM Appointments a
        JOIN Patients p ON a.patient_id = p.patient_id
        WHERE a.doctor_id = p_doctor_id
        AND TRUNC(a.appointment_date) = TRUNC(p_date)
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Appointment ID: ' || rec.appointment_id ||
                             ' | Patient: ' || rec.patient_name ||
                             ' | Reason: ' || rec.reason ||
                             ' | Status: ' || rec.status);
    END LOOP;
END;
/
