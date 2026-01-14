CREATE OR REPLACE PROCEDURE doctor_monthly_report (
    p_doctor_id IN Doctors.doctor_id%TYPE,
    p_month     IN NUMBER,
    p_year      IN NUMBER
)
IS
    v_exists INTEGER;
BEGIN
    -- Validate doctor
    SELECT COUNT(*) INTO v_exists FROM Doctors WHERE doctor_id = p_doctor_id;
    IF v_exists = 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Doctor ID does not exist.');
    END IF;

    DBMS_OUTPUT.PUT_LINE('--- Monthly Report for Doctor ID: ' || p_doctor_id || ' ---');

    FOR rec IN (
        SELECT a.appointment_id, a.appointment_date, p.full_name AS patient_name,
               m.diagnosis, m.treatment
        FROM Appointments a
        JOIN Patients p ON a.patient_id = p.patient_id
        LEFT JOIN Medical_Records m ON a.appointment_id = m.appointment_id
        WHERE a.doctor_id = p_doctor_id
          AND EXTRACT(MONTH FROM a.appointment_date) = p_month
          AND EXTRACT(YEAR FROM a.appointment_date) = p_year
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Appointment: ' || rec.appointment_id || 
                             ' | Patient: ' || rec.patient_name ||
                             ' | Date: ' || rec.appointment_date ||
                             ' | Diagnosis: ' || NVL(rec.diagnosis, 'N/A') ||
                             ' | Treatment: ' || NVL(rec.treatment, 'N/A'));
    END LOOP;
END;
/
