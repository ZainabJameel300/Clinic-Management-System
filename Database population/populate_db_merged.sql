INSERT INTO Patients (patient_id, full_name, gender, date_of_birth, contact_number, email, address, registration_date, blood_group, allergies)
VALUES (1, 'Ali Al Hassan', 'Male', TO_DATE('1969-10-19', 'YYYY-MM-DD'), '3634206849', 'ali.al.hassan@example.com', 'Manama, Bahrain', TO_DATE('2025-05-09', 'YYYY-MM-DD'), 'AB-', 'Penicillin');

INSERT INTO Patients (patient_id, full_name, gender, date_of_birth, contact_number, email, address, registration_date, blood_group, allergies)
VALUES (2, 'Aisha Al Khalifa', 'Female', TO_DATE('1983-03-08', 'YYYY-MM-DD'), '3762309791', 'aisha.al.khalifa@example.com', 'Manama, Bahrain', TO_DATE('2025-05-09', 'YYYY-MM-DD'), 'O-', 'Dust');

INSERT INTO Patients (patient_id, full_name, gender, date_of_birth, contact_number, email, address, registration_date, blood_group, allergies)
VALUES (3, 'Mohammed Al Qassab', 'Male', TO_DATE('1981-08-11', 'YYYY-MM-DD'), '3791512163', 'mohammed.al.qassab@example.com', 'Manama, Bahrain', TO_DATE('2025-05-09', 'YYYY-MM-DD'), 'B-', 'Penicillin');

INSERT INTO Patients (patient_id, full_name, gender, date_of_birth, contact_number, email, address, registration_date, blood_group, allergies)
VALUES (4, 'Fatima Al Mahmood', 'Female', TO_DATE('1980-02-10', 'YYYY-MM-DD'), '3626015744', 'fatima.al.mahmood@example.com', 'Manama, Bahrain', TO_DATE('2025-05-09', 'YYYY-MM-DD'), 'B+', 'Pollen');

INSERT INTO Patients (patient_id, full_name, gender, date_of_birth, contact_number, email, address, registration_date, blood_group, allergies)
VALUES (5, 'Khalid Al Dosari', 'Male', TO_DATE('1984-08-26', 'YYYY-MM-DD'), '3936112852', 'khalid.al.dosari@example.com', 'Manama, Bahrain', TO_DATE('2025-05-09', 'YYYY-MM-DD'), 'O-', 'None');

INSERT INTO Patients (patient_id, full_name, gender, date_of_birth, contact_number, email, address, registration_date, blood_group, allergies)
VALUES (6, 'Fatima Al Hassan', 'Female', TO_DATE('1982-03-18', 'YYYY-MM-DD'), '3868474081', 'fatima.al.hassan@example.com', 'Manama, Bahrain', TO_DATE('2025-05-09', 'YYYY-MM-DD'), 'B-', 'Pollen');

INSERT INTO Patients (patient_id, full_name, gender, date_of_birth, contact_number, email, address, registration_date, blood_group, allergies)
VALUES (7, 'Fatima Al Khalifa', 'Female', TO_DATE('1962-02-17', 'YYYY-MM-DD'), '3565284689', 'fatima.al.khalifa@example.com', 'Manama, Bahrain', TO_DATE('2025-05-09', 'YYYY-MM-DD'), 'AB-', 'Penicillin');

INSERT INTO Patients (patient_id, full_name, gender, date_of_birth, contact_number, email, address, registration_date, blood_group, allergies)
VALUES (8, 'Fatima Al Zayani', 'Female', TO_DATE('1982-12-14', 'YYYY-MM-DD'), '3945422139', 'fatima.al.zayani@example.com', 'Manama, Bahrain', TO_DATE('2025-05-09', 'YYYY-MM-DD'), 'O-', 'Dust');

INSERT INTO Patients (patient_id, full_name, gender, date_of_birth, contact_number, email, address, registration_date, blood_group, allergies)
VALUES (9, 'Hassan Al Qassab', 'Male', TO_DATE('1971-09-07', 'YYYY-MM-DD'), '3620462846', 'hassan.al.qassab@example.com', 'Manama, Bahrain', TO_DATE('2025-05-09', 'YYYY-MM-DD'), 'B+', 'None');

INSERT INTO Patients (patient_id, full_name, gender, date_of_birth, contact_number, email, address, registration_date, blood_group, allergies)
VALUES (10, 'Ali Al Hassan', 'Male', TO_DATE('1979-04-13', 'YYYY-MM-DD'), '3625359026', 'ali.al.hassan@example.com', 'Manama, Bahrain', TO_DATE('2025-05-09', 'YYYY-MM-DD'), 'O-', 'Pollen');


-- 

INSERT INTO Doctors (doctor_id, full_name, specialization, phone_number, email, availability, status)
VALUES (1, 'Mohammed Al Zayani', 'Cardiology', '3698247321', 'mohammed.al.zayani@example.com', '9AM–5PM', 'Active');

INSERT INTO Doctors (doctor_id, full_name, specialization, phone_number, email, availability, status)
VALUES (2, 'Fatima Al Dosari', 'Pediatrics', '3647321283', 'fatima.al.dosari@example.com', '10AM–6PM', 'Active');

INSERT INTO Doctors (doctor_id, full_name, specialization, phone_number, email, availability, status)
VALUES (3, 'Yusuf Al Jalahma', 'Dermatology', '3772843654', 'yusuf.al.jalahma@example.com', '8AM–4PM', 'Active');

INSERT INTO Doctors (doctor_id, full_name, specialization, phone_number, email, availability, status)
VALUES (4, 'Zainab Al Shehabi', 'Neurology', '3914829374', 'zainab.al.shehabi@example.com', '9AM–5PM', 'Active');

INSERT INTO Doctors (doctor_id, full_name, specialization, phone_number, email, availability, status)
VALUES (5, 'Khalid Al Mahmood', 'General Practice', '3657382931', 'khalid.al.mahmood@example.com', '11AM–7PM', 'Active');

--

INSERT INTO Receptionists (receptionist_id, full_name, email, phone_number, username, password)
VALUES (1, 'Layla Al Shehabi', 'layla.al.shehabi@clinic.bh', '3628493741', 'layla.s', 'pass123');

INSERT INTO Receptionists (receptionist_id, full_name, email, phone_number, username, password)
VALUES (2, 'Mariam Al Hassan', 'mariam.al.hassan@clinic.bh', '3902847361', 'mariam.h', 'pass456');

INSERT INTO Receptionists (receptionist_id, full_name, email, phone_number, username, password)
VALUES (3, 'Noor Al Qassab', 'noor.al.qassab@clinic.bh', '3739482716', 'noor.q', 'pass789');

--- 
INSERT INTO Appointments (appointment_id, patient_id, doctor_id, appointment_date, appointment_duration, reason, status)
VALUES (1, 1, 2, TO_DATE('2024-05-01', 'YYYY-MM-DD'), INTERVAL '30' MINUTE, 'Flu symptoms', 'Completed');

INSERT INTO Appointments (appointment_id, patient_id, doctor_id, appointment_date, appointment_duration, reason, status)
VALUES (2, 2, 1, TO_DATE('2024-05-03', 'YYYY-MM-DD'), INTERVAL '15' MINUTE, 'Back pain', 'Completed');

INSERT INTO Appointments (appointment_id, patient_id, doctor_id, appointment_date, appointment_duration, reason, status)
VALUES (3, 3, 4, TO_DATE('2024-05-05', 'YYYY-MM-DD'), INTERVAL '45' MINUTE, 'Headache', 'Completed');

INSERT INTO Appointments (appointment_id, patient_id, doctor_id, appointment_date, appointment_duration, reason, status)
VALUES (4, 4, 3, TO_DATE('2024-05-06', 'YYYY-MM-DD'), INTERVAL '20' MINUTE, 'Routine checkup', 'Completed');

INSERT INTO Appointments (appointment_id, patient_id, doctor_id, appointment_date, appointment_duration, reason, status)
VALUES (5, 5, 2, TO_DATE('2024-05-07', 'YYYY-MM-DD'), INTERVAL '30' MINUTE, 'Skin rash', 'Completed');

INSERT INTO Appointments (appointment_id, patient_id, doctor_id, appointment_date, appointment_duration, reason, status)
VALUES (6, 6, 5, TO_DATE('2024-05-08', 'YYYY-MM-DD'), INTERVAL '25' MINUTE, 'Follow-up', 'Completed');

INSERT INTO Appointments (appointment_id, patient_id, doctor_id, appointment_date, appointment_duration, reason, status)
VALUES (7, 7, 1, TO_DATE('2024-05-09', 'YYYY-MM-DD'), INTERVAL '30' MINUTE, 'Joint pain', 'Completed');

INSERT INTO Appointments (appointment_id, patient_id, doctor_id, appointment_date, appointment_duration, reason, status)
VALUES (8, 8, 4, TO_DATE('2024-05-10', 'YYYY-MM-DD'), INTERVAL '20' MINUTE, 'Chest discomfort', 'Completed');

INSERT INTO Appointments (appointment_id, patient_id, doctor_id, appointment_date, appointment_duration, reason, status)
VALUES (9, 9, 3, TO_DATE('2024-05-11', 'YYYY-MM-DD'), INTERVAL '15' MINUTE, 'Checkup', 'Completed');

INSERT INTO Appointments (appointment_id, patient_id, doctor_id, appointment_date, appointment_duration, reason, status)
VALUES (10, 10, 5, TO_DATE('2024-05-12', 'YYYY-MM-DD'), INTERVAL '45' MINUTE, 'Fatigue', 'Completed');

--- 
INSERT INTO Medical_Records (record_id, patient_id, doctor_id, appointment_id, diagnosis, treatment, visit_date)
VALUES (1, 1, 2, 1, 'Influenza', 'Rest and hydration', TO_DATE('2024-05-01', 'YYYY-MM-DD'));

INSERT INTO Medical_Records (record_id, patient_id, doctor_id, appointment_id, diagnosis, treatment, visit_date)
VALUES (2, 2, 1, 2, 'Lower back strain', 'Pain relief medication', TO_DATE('2024-05-03', 'YYYY-MM-DD'));

INSERT INTO Medical_Records (record_id, patient_id, doctor_id, appointment_id, diagnosis, treatment, visit_date)
VALUES (3, 3, 4, 3, 'Migraine', 'Prescribed triptans', TO_DATE('2024-05-05', 'YYYY-MM-DD'));

INSERT INTO Medical_Records (record_id, patient_id, doctor_id, appointment_id, diagnosis, treatment, visit_date)
VALUES (4, 4, 3, 4, 'General checkup', 'All vitals normal', TO_DATE('2024-05-06', 'YYYY-MM-DD'));

INSERT INTO Medical_Records (record_id, patient_id, doctor_id, appointment_id, diagnosis, treatment, visit_date)
VALUES (5, 5, 2, 5, 'Dermatitis', 'Topical steroid cream', TO_DATE('2024-05-07', 'YYYY-MM-DD'));

INSERT INTO Medical_Records (record_id, patient_id, doctor_id, appointment_id, diagnosis, treatment, visit_date)
VALUES (6, 6, 5, 6, 'Post-op follow-up', 'Continue antibiotics', TO_DATE('2024-05-08', 'YYYY-MM-DD'));

INSERT INTO Medical_Records (record_id, patient_id, doctor_id, appointment_id, diagnosis, treatment, visit_date)
VALUES (7, 7, 1, 7, 'Joint inflammation', 'NSAIDs prescribed', TO_DATE('2024-05-09', 'YYYY-MM-DD'));

INSERT INTO Medical_Records (record_id, patient_id, doctor_id, appointment_id, diagnosis, treatment, visit_date)
VALUES (8, 8, 4, 8, 'Heart palpitations', 'Scheduled ECG', TO_DATE('2024-05-10', 'YYYY-MM-DD'));

INSERT INTO Medical_Records (record_id, patient_id, doctor_id, appointment_id, diagnosis, treatment, visit_date)
VALUES (9, 9, 3, 9, 'Annual checkup', 'No issues found', TO_DATE('2024-05-11', 'YYYY-MM-DD'));

INSERT INTO Medical_Records (record_id, patient_id, doctor_id, appointment_id, diagnosis, treatment, visit_date)
VALUES (10, 10, 5, 10, 'Anemia', 'Iron supplements', TO_DATE('2024-05-12', 'YYYY-MM-DD'));

-- 
INSERT INTO Prescriptions (prescription_id, record_id, medication_name, dosage, duration_days, instructions)
VALUES (1, 1, 'Paracetamol', '500 mg', 5, 'Take every 6 hours after meals');

INSERT INTO Prescriptions (prescription_id, record_id, medication_name, dosage, duration_days, instructions)
VALUES (2, 2, 'Ibuprofen', '400 mg', 7, 'Take twice daily with food');

INSERT INTO Prescriptions (prescription_id, record_id, medication_name, dosage, duration_days, instructions)
VALUES (3, 3, 'Sumatriptan', '50 mg', 3, 'Take at onset of migraine');

INSERT INTO Prescriptions (prescription_id, record_id, medication_name, dosage, duration_days, instructions)
VALUES (4, 4, 'Multivitamins', '1 tablet', 30, 'Take once daily');

INSERT INTO Prescriptions (prescription_id, record_id, medication_name, dosage, duration_days, instructions)
VALUES (5, 5, 'Hydrocortisone Cream', 'Apply thin layer', 10, 'Apply twice daily to affected area');

INSERT INTO Prescriptions (prescription_id, record_id, medication_name, dosage, duration_days, instructions)
VALUES (6, 6, 'Amoxicillin', '500 mg', 7, 'Take three times daily');

INSERT INTO Prescriptions (prescription_id, record_id, medication_name, dosage, duration_days, instructions)
VALUES (7, 7, 'Diclofenac', '50 mg', 5, 'Take after meals');

INSERT INTO Prescriptions (prescription_id, record_id, medication_name, dosage, duration_days, instructions)
VALUES (8, 8, 'Atenolol', '25 mg', 30, 'Take once in the morning');

INSERT INTO Prescriptions (prescription_id, record_id, medication_name, dosage, duration_days, instructions)
VALUES (9, 9, 'No prescription needed', '', 0, 'General checkup only');

INSERT INTO Prescriptions (prescription_id, record_id, medication_name, dosage, duration_days, instructions)
VALUES (10, 10, 'Ferrous Sulfate', '325 mg', 14, 'Take on empty stomach if tolerated');

-- 
INSERT INTO Bills (bill_id, patient_id, appointment_id, amount, status, payment_date)
VALUES (1, 1, 1, 35.00, 'Paid', TO_DATE('2024-05-01', 'YYYY-MM-DD'));

INSERT INTO Bills (bill_id, patient_id, appointment_id, amount, status, payment_date)
VALUES (2, 2, 2, 45.00, 'Paid', TO_DATE('2024-05-03', 'YYYY-MM-DD'));

INSERT INTO Bills (bill_id, patient_id, appointment_id, amount, status, payment_date)
VALUES (3, 3, 3, 60.00, 'Unpaid', NULL);

INSERT INTO Bills (bill_id, patient_id, appointment_id, amount, status, payment_date)
VALUES (4, 4, 4, 30.00, 'Paid', TO_DATE('2024-05-06', 'YYYY-MM-DD'));

INSERT INTO Bills (bill_id, patient_id, appointment_id, amount, status, payment_date)
VALUES (5, 5, 5, 50.00, 'Paid', TO_DATE('2024-05-07', 'YYYY-MM-DD'));

INSERT INTO Bills (bill_id, patient_id, appointment_id, amount, status, payment_date)
VALUES (6, 6, 6, 55.00, 'Unpaid', NULL);

INSERT INTO Bills (bill_id, patient_id, appointment_id, amount, status, payment_date)
VALUES (7, 7, 7, 40.00, 'Paid', TO_DATE('2024-05-09', 'YYYY-MM-DD'));

INSERT INTO Bills (bill_id, patient_id, appointment_id, amount, status, payment_date)
VALUES (8, 8, 8, 65.00, 'Paid', TO_DATE('2024-05-10', 'YYYY-MM-DD'));

INSERT INTO Bills (bill_id, patient_id, appointment_id, amount, status, payment_date)
VALUES (9, 9, 9, 25.00, 'Unpaid', NULL);

INSERT INTO Bills (bill_id, patient_id, appointment_id, amount, status, payment_date)
VALUES (10, 10, 10, 75.00, 'Paid', TO_DATE('2024-05-12', 'YYYY-MM-DD'));
