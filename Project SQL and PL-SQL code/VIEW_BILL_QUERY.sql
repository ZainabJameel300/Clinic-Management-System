SELECT 
  BILL_ID,
  PATIENT_ID,
  APPOINTMENT_ID,
  AMOUNT,
  STATUS,
  PAYMENT_DATE,
  CASE 
    WHEN STATUS = 'Unpaid' AND PAYMENT_DATE IS NULL THEN 
      '<a href="' || APEX_PAGE.GET_URL (
        p_page   => 9, -- رقم صفحة المودال
        p_items  => 'P9_BILL_ID', -- اسم الآيتم اللي موجود في صفحة المودال
        p_values => BILL_ID
      ) || '" class="pay-now-link">Pay Now</a>'
    ELSE
      TO_CHAR(PAYMENT_DATE, 'DD-MON-YYYY')
  END AS PAY_NOW
FROM BILLS
WHERE PATIENT_ID = :APP_USER
