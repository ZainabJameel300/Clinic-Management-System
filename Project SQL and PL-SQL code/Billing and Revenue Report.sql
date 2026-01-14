SELECT 
    TO_CHAR(payment_date, 'Month YYYY') AS period,
    SUM(amount) AS total_revenue,
    SUM(CASE WHEN status = 'Paid' THEN amount ELSE 0 END) AS paid_invoices,
    SUM(CASE WHEN status = 'Unpaid' THEN amount ELSE 0 END) AS outstanding,
    SUM(CASE WHEN status = 'Refunded' THEN amount ELSE 0 END) AS refunds
FROM bills
GROUP BY TO_CHAR(payment_date, 'Month YYYY')
ORDER BY MIN(payment_date);
