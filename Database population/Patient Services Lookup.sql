CREATE OR REPLACE PROCEDURE patient_services (
    p_patient_id IN Patients.patient_id%TYPE
)
IS
    v_exists INTEGER;
BEGIN
    -- Validate patient existence
    SELECT COUNT(*) INTO v_exists FROM Patients WHERE patient_id = p_patient_id;

    IF v_exists = 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Patient ID does not exist.');
    END IF;

    -- Patient profile
    DBMS_OUTPUT.PUT_LINE('--- Patient Information ---');
    FOR rec IN (
        SELECT * FROM Patients WHERE patient_id = p_patient_id
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Name: ' || rec.full_name || ', DOB: ' || rec.date_of_birth || ', Blood Group: ' || rec.blood_group);
        DBMS_OUTPUT.PUT_LINE('Allergies: ' || rec.allergies || ', Contact: ' || rec.contact_number);
    END LOOP;

    -- Appointments
    DBMS_OUTPUT.PUT_LINE('--- Appointments ---');
    FOR appt IN (
        SELECT a.appointment_id, a.appointment_date, d.full_name AS doctor_name, a.reason, a.status
        FROM Appointments a
        JOIN Doctors d ON a.doctor_id = d.doctor_id
        WHERE a.patient_id = p_patient_id
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Appointment ID: ' || appt.appointment_id || ' | Date: ' || appt.appointment_date ||
                             ' | Doctor: ' || appt.doctor_name || ' | Reason: ' || appt.reason || ' | Status: ' || appt.status);
    END LOOP;

    -- Medical Records
    DBMS_OUTPUT.PUT_LINE('--- Medical Records ---');
    FOR rec IN (
        SELECT * FROM Medical_Records WHERE patient_id = p_patient_id
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Record ID: ' || rec.record_id || ' | Diagnosis: ' || rec.diagnosis || ' | Treatment: ' || rec.treatment);
    END LOOP;

    -- Prescriptions
    DBMS_OUTPUT.PUT_LINE('--- Prescriptions ---');
    FOR p IN (
        SELECT pr.prescription_id, pr.medication_name, pr.dosage, pr.duration_days, pr.instructions
        FROM Prescriptions pr
        JOIN Medical_Records mr ON pr.record_id = mr.record_id
        WHERE mr.patient_id = p_patient_id
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Prescription: ' || p.medication_name || ' | Dosage: ' || p.dosage || 
                             ' | Duration: ' || p.duration_days || ' | Instructions: ' || p.instructions);
    END LOOP;

    -- Bills
    DBMS_OUTPUT.PUT_LINE('--- Billing Information ---');
    FOR b IN (
        SELECT * FROM Bills WHERE patient_id = p_patient_id
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Bill ID: ' || b.bill_id || ' | Amount: ' || b.amount || ' | Status: ' || b.status || 
                             ' | Payment Date: ' || NVL(TO_CHAR(b.payment_date), 'N/A'));
    END LOOP;
END;
/
