IF :REQUEST = 'PAY_BUTTON' THEN
   IF :P9_BILL_ID IS NULL THEN
      raise_application_error(-20002, 'P9_BILL_ID is null!');
   END IF;
   -- التحديث
   UPDATE BILLS
   SET STATUS = 'Paid',
       PAYMENT_DATE = SYSDATE
   WHERE BILL_ID = :P9_BILL_ID;
END IF;
