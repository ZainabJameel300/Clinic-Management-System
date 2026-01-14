SELECT 
    gender,
    COUNT(CASE 
            WHEN MONTHS_BETWEEN(SYSDATE, date_of_birth)/12 <= 18 THEN 1 
         END) AS "Age Group 0–18",
    COUNT(CASE 
            WHEN MONTHS_BETWEEN(SYSDATE, date_of_birth)/12 BETWEEN 19 AND 40 THEN 1 
         END) AS "19–40",
    COUNT(CASE 
            WHEN MONTHS_BETWEEN(SYSDATE, date_of_birth)/12 BETWEEN 41 AND 60 THEN 1 
         END) AS "41–60",
    COUNT(CASE 
            WHEN MONTHS_BETWEEN(SYSDATE, date_of_birth)/12 > 60 THEN 1 
         END) AS "60+",
    COUNT(*) AS "Total"
FROM 
    patients
GROUP BY 
    gender
ORDER BY 
    gender;
