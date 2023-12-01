-- Insert dummy data into Patients table
INSERT INTO Patients (patient_id, first_name, last_name, dob, gender, contact_number, address)
VALUES
  (1, 'John', 'Doe', '1990-05-15', 'Male', '123-456-7890', '123 Main St'),
  (2, 'Jane', 'Smith', '1985-08-20', 'Female', '987-654-3210', '456 Oak St'),
  (3, 'Mike', 'Johnson', '1978-12-10', 'Male', '555-123-4567', '789 Pine St'),
  (4, 'Emily', 'Davis', '1995-03-25', 'Female', '222-333-4444', '101 Elm St'),
  (5, 'Chris', 'Wilson', '1980-06-18', 'Male', '888-999-0000', '202 Maple St');

-- Insert dummy data into Providers table
INSERT INTO Providers (provider_id, provider_name, address, contact_number, fee)
VALUES
  (1, 'General Hospital', '123 Medical Blvd', '555-111-2222', 500.00),
  (2, 'Family Clinic', '456 Health Ave', '888-444-3333', 300.00),
  (3, 'OrthoCare Center', '789 Wellness St', '777-888-9999', 700.00),
  (4, 'Dental Excellence', '101 Tooth Lane', '333-222-1111', 200.00),
  (5, 'CardioVascular Associates', '202 Heart Rd', '666-555-4444', 600.00);

-- Insert dummy data into BillingInformation table
INSERT INTO BillingInformation (bill_id, patient_id, provider_id, billing_date, amount_due)
VALUES
  (1, 1, 1, '2023-01-05', 600.00),
  (2, 2, 3, '2023-02-10', 400.00),
  (3, 3, 2, '2023-03-15', 300.00),
  (4, 4, 4, '2023-04-20', 150.00),
  (5, 5, 5, '2023-05-25', 900.00);

-- Insert dummy data into InsuranceCompanies table
INSERT INTO InsuranceCompanies (insurance_id, insurance_name, contact_number)
VALUES
  (1, 'HealthGuard Insurance', '800-123-4567'),
  (2, 'MediCare Plus', '800-987-6543'),
  (3, 'SecureLife Insurance', '800-555-7890'),
  (4, 'DentalCare Insurance', '800-222-3333'),
  (5, 'HeartShield Insurance', '800-666-7777');

-- Insert dummy data into Claims table
INSERT INTO Claims (claim_id, bill_id, insurance_id, claim_date, claim_amount, status)
VALUES
  (1, 1, 1, '2023-01-10', 500.00, 'Approved'),
  (2, 2, 2, '2023-02-15', 350.00, 'Pending'),
  (3, 3, 3, '2023-03-20', 200.00, 'Approved'),
  (4, 4, 4, '2023-04-25', 100.00, 'Rejected'),
  (5, 5, 5, '2023-05-30', 800.00, 'Pending');
