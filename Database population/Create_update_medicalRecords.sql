CREATE OR REPLACE PROCEDURE create_or_update_medical_record (
    p_doctor_id     IN Doctors.doctor_id%TYPE,
    p_patient_id    IN Patients.patient_id%TYPE,
    p_appointment_id IN Appointments.appointment_id%TYPE,
    p_diagnosis     IN Medical_Records.diagnosis%TYPE,
    p_treatment     IN Medical_Records.treatment%TYPE
)
IS
    v_exists INTEGER;
    v_record_id Medical_Records.record_id%TYPE;
BEGIN
    -- Validate doctor
    SELECT COUNT(*) INTO v_exists FROM Doctors WHERE doctor_id = p_doctor_id;
    IF v_exists = 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Doctor ID not found.');
    END IF;

    -- Validate patient
    SELECT COUNT(*) INTO v_exists FROM Patients WHERE patient_id = p_patient_id;
    IF v_exists = 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Patient ID not found.');
    END IF;

    -- Validate appointment
    SELECT COUNT(*) INTO v_exists FROM Appointments WHERE appointment_id = p_appointment_id;
    IF v_exists = 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Appointment ID not found.');
    END IF;

    -- Check if a medical record already exists for this appointment
    SELECT record_id INTO v_record_id
    FROM Medical_Records
    WHERE appointment_id = p_appointment_id
    AND patient_id = p_patient_id
    AND doctor_id = p_doctor_id
    FETCH FIRST ROW ONLY;

    -- Update if exists
    UPDATE Medical_Records
    SET diagnosis = p_diagnosis,
        treatment = p_treatment,
        visit_date = SYSDATE
    WHERE record_id = v_record_id;

    DBMS_OUTPUT.PUT_LINE('Medical record updated. ID: ' || v_record_id);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        -- Insert if no existing record
        INSERT INTO Medical_Records (
            record_id, patient_id, doctor_id, appointment_id, diagnosis, treatment, visit_date
        ) VALUES (
            seq_record_id.NEXTVAL, p_patient_id, p_doctor_id, p_appointment_id,
            p_diagnosis, p_treatment, SYSDATE
        );

        DBMS_OUTPUT.PUT_LINE('New medical record created.');
END;
/
