SELECT 
    p.provider_name,
    SUM(bi.amount_due) AS total_billing_amount
FROM Providers p
JOIN BillingInformation bi ON p.provider_id = bi.provider_id
GROUP BY p.provider_name
ORDER BY total_billing_amount DESC;
