-- Trigger for Patients table
CREATE OR REPLACE TRIGGER trg_patient_id
BEFORE INSERT ON PATIENTS
FOR EACH ROW
BEGIN
    IF :NEW.PATIENT_ID IS NULL THEN
        :NEW.PATIENT_ID := seq_patient_id.NEXTVAL;
    END IF;
END;
/

-- Trigger for Doctors table
CREATE OR REPLACE TRIGGER trg_doctor_id
BEFORE INSERT ON DOCTORS
FOR EACH ROW
BEGIN
    IF :NEW.DOCTOR_ID IS NULL THEN
        :NEW.DOCTOR_ID := seq_doctor_id.NEXTVAL;
    END IF;
END;
/

-- Trigger for Receptionists table
CREATE OR REPLACE TRIGGER trg_receptionist_id
BEFORE INSERT ON RECEPTIONISTS
FOR EACH ROW
BEGIN
    IF :NEW.RECEPTIONIST_ID IS NULL THEN
        :NEW.RECEPTIONIST_ID := seq_receptionist_id.NEXTVAL;
    END IF;
END;
/

-- Trigger for Appointments table
CREATE OR REPLACE TRIGGER trg_appointment_id
BEFORE INSERT ON APPOINTMENTS
FOR EACH ROW
BEGIN
    IF :NEW.APPOINTMENT_ID IS NULL THEN
        :NEW.APPOINTMENT_ID := seq_appointment_id.NEXTVAL;
    END IF;
END;
/

-- Trigger for Medical_Records table
CREATE OR REPLACE TRIGGER trg_record_id
BEFORE INSERT ON MEDICAL_RECORDS
FOR EACH ROW
BEGIN
    IF :NEW.RECORD_ID IS NULL THEN
        :NEW.RECORD_ID := seq_record_id.NEXTVAL;
    END IF;
END;
/

-- Trigger for Prescriptions table
CREATE OR REPLACE TRIGGER trg_prescription_id
BEFORE INSERT ON PRESCRIPTIONS
FOR EACH ROW
BEGIN
    IF :NEW.PRESCRIPTION_ID IS NULL THEN
        :NEW.PRESCRIPTION_ID := seq_prescription_id.NEXTVAL;
    END IF;
END;
/

-- Trigger for Bills table
CREATE OR REPLACE TRIGGER trg_bill_id
BEFORE INSERT ON BILLS
FOR EACH ROW
BEGIN
    IF :NEW.BILL_ID IS NULL THEN
        :NEW.BILL_ID := seq_bill_id.NEXTVAL;
    END IF;
END;
/
