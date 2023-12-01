SELECT 
    DATE_FORMAT(bi.billing_date, '%Y-%m') AS month,
    SUM(bi.amount_due) AS total_revenue,
    SUM(c.claim_amount) AS total_claims,
    (SUM(bi.amount_due) - SUM(c.claim_amount)) AS net_revenue
FROM BillingInformation bi
LEFT JOIN Claims c ON bi.bill_id = c.bill_id
GROUP BY month
ORDER BY month;
