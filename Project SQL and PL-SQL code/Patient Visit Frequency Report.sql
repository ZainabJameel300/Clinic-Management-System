SELECT 
    p.full_name AS "Patient Name",
    COUNT(*) AS "Visits This Month",
    TO_CHAR(MAX(a.appointment_date), 'YYYY-MM-DD') AS "Last Visit Date"
FROM 
    appointments a
JOIN 
    patients p ON a.patient_id = p.patient_id
WHERE 
    TO_CHAR(a.appointment_date, 'YYYY-MM') = TO_CHAR(SYSDATE, 'YYYY-MM')
GROUP BY 
    p.full_name
ORDER BY 
    "Visits This Month" DESC;
