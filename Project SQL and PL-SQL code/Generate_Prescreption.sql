SELECT 
    p.full_name AS patient_name,
    d.full_name AS doctor_name,
    pr.medication_name,
    pr.dosage,
    pr.duration_days AS duration_days,
    pr.instructions
FROM 
    prescriptions pr
JOIN 
    medical_records mr ON pr.record_id = mr.record_id
JOIN 
    patients p ON mr.patient_id = p.patient_id
JOIN 
    doctors d ON mr.doctor_id = d.doctor_id
WHERE 
    mr.doctor_id = :APP_USER;
