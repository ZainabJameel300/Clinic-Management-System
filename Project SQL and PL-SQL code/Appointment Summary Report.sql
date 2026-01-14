SELECT 
    TO_CHAR(a.appointment_date, 'YYYY-MM-DD') AS appointment_day,
    d.full_name AS doctor_name,
    COUNT(*) AS total_appointments,
    SUM(CASE WHEN a.status = 'Cancelled' THEN 1 ELSE 0 END) AS cancelled,
    SUM(CASE WHEN a.status = 'No Show' THEN 1 ELSE 0 END) AS no_shows
FROM appointments a
JOIN doctors d ON a.doctor_id = d.doctor_id
GROUP BY TO_CHAR(a.appointment_date, 'YYYY-MM-DD'), d.full_name
ORDER BY appointment_day, doctor_name;