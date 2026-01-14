CREATE OR REPLACE PROCEDURE add_patient (
    p_full_name        IN Patients.full_name%TYPE,
    p_gender           IN Patients.gender%TYPE,
    p_date_of_birth    IN Patients.date_of_birth%TYPE,
    p_contact_number   IN Patients.contact_number%TYPE,
    p_email            IN Patients.email%TYPE,
    p_address          IN Patients.address%TYPE,
    p_registration_date IN Patients.registration_date%TYPE,
    p_blood_group      IN Patients.blood_group%TYPE,
    p_allergies        IN Patients.allergies%TYPE
)
IS
BEGIN
    INSERT INTO Patients (
        patient_id, full_name, gender, date_of_birth,
        contact_number, email, address,
        registration_date, blood_group, allergies
    ) VALUES (
        seq_patient_id.NEXTVAL, p_full_name, p_gender, p_date_of_birth,
        p_contact_number, p_email, p_address,
        p_registration_date, p_blood_group, p_allergies
    );
    
    COMMIT;
END;
/
