-- Patients
CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    full_name VARCHAR2(100) NOT NULL,
    gender VARCHAR2(10),
    date_of_birth DATE,
    contact_number VARCHAR2(15),
    email VARCHAR2(100),
    address VARCHAR2(255),
    registration_date DATE,
    blood_group VARCHAR2(5),
    allergies VARCHAR2(255)
);

-- Doctors
CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY,
    full_name VARCHAR2(100) NOT NULL,
    specialization VARCHAR2(100),
    phone_number VARCHAR2(15),
    email VARCHAR2(100),
    availability VARCHAR2(50),
    status VARCHAR2(10)
);

--Receptionists
CREATE TABLE Receptionists (
    receptionist_id INT PRIMARY KEY,
    full_name VARCHAR2(100) NOT NULL,
    email VARCHAR2(100),
    phone_number VARCHAR2(15),
    username VARCHAR2(50),
    password VARCHAR2(255)
);

--  Appointments
CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT REFERENCES Patients(patient_id),
    doctor_id INT REFERENCES Doctors(doctor_id),
    appointment_date DATE,
    appointment_duration INTERVAL DAY TO SECOND,
    reason VARCHAR2(255),
    status VARCHAR2(20)
);

--  Medical_records
CREATE TABLE Medical_records (
    record_id INT PRIMARY KEY,
    patient_id INT REFERENCES Patients(patient_id),
    doctor_id INT REFERENCES Doctors(doctor_id),
    appointment_id INT REFERENCES Appointments(appointment_id),
    diagnosis CLOB,
    treatment CLOB,
    visit_date DATE
);

--Prescriptions
CREATE TABLE Prescriptions (
    prescription_id INT PRIMARY KEY,
    record_id INT REFERENCES Medical_records(record_id),
    medication_name VARCHAR2(100),
    dosage VARCHAR2(50),
    duration_days INT,
    instructions CLOB
);

-- Bills
CREATE TABLE Bills (
    bill_id INT PRIMARY KEY,
    patient_id INT REFERENCES Patients(patient_id),
    appointment_id INT REFERENCES Appointments(appointment_id),
    amount DECIMAL(10,2),
    status VARCHAR2(20),
    payment_date DATE
);

-- Sequences for PK
CREATE SEQUENCE seq_patient_id START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_doctor_id START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_receptionist_id START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_appointment_id START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_record_id START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_prescription_id START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_bill_id START WITH 1 INCREMENT BY 1;
