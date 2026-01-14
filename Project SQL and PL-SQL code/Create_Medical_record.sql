select RECORD_ID,
       PATIENT_ID,
       DOCTOR_ID,
       APPOINTMENT_ID,
       DIAGNOSIS,
       TREATMENT,
       VISIT_DATE
  from MEDICAL_RECORDS
  where DOCTOR_ID = :APP_USER;