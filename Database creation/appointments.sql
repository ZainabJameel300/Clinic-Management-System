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
