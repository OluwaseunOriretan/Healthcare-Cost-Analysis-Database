SELECT 
    DATE_FORMAT(billing_date, '%Y-%m') AS month,
    SUM(amount_due) AS total_billing_amount
FROM BillingInformation
GROUP BY month
ORDER BY month;
