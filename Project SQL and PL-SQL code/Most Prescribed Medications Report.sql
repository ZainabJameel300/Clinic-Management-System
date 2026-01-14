SELECT 
    medication_name AS "Medication Name",
    COUNT(*) AS "Times Prescribed"
FROM 
    prescriptions
GROUP BY 
    medication_name
ORDER BY 
    COUNT(*) DESC
FETCH FIRST 4 ROWS ONLY;
