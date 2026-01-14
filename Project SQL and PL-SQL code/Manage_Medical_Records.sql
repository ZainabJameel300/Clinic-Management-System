-- To view the patients record for the patient who have booked an appoitnment with the logged in doctor only
SELECT DISTINCT 
    P.PATIENT_ID,
    P.FULL_NAME AS PATIENT_NAME,
    P.GENDER,
    TO_CHAR(P.DATE_OF_BIRTH, 'DD-MON-YYYY') AS DATE_OF_BIRTH,
    P.BLOOD_GROUP,
    P.ALLERGIES,
    D.FULL_NAME AS DOCTOR_NAME
FROM
    PATIENTS P
JOIN
    APPOINTMENTS A ON P.PATIENT_ID = A.PATIENT_ID
JOIN
    DOCTORS D ON A.DOCTOR_ID = D.DOCTOR_ID
WHERE
    UPPER(TRIM(D.DOCTOR_ID)) = UPPER(TRIM(:APP_USER))
