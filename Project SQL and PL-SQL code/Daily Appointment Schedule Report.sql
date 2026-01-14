SELECT
    TO_CHAR(a.appointment_date, 'HH:MI AM') AS "Time",
    p.full_name AS "Patient Name",
    d.full_name AS "Doctor Name",
    a.reason AS "Reason",
    a.status AS "Status"
FROM
    appointments a
JOIN
    patients p ON a.patient_id = p.patient_id
JOIN
    doctors d ON a.doctor_id = d.doctor_id
WHERE
    TRUNC(a.appointment_date) = TRUNC(SYSDATE)
ORDER BY
    a.appointment_date;
