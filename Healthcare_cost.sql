CREATE DATABASE IF NOT EXISTS healthcare_cost;

USE healthcare_cost;

CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dob DATE,
    gender VARCHAR(10),
    contact_number VARCHAR(20),
    address VARCHAR(255)
);

CREATE TABLE Providers (
    provider_id INT PRIMARY KEY,
    provider_name VARCHAR(100),
    address VARCHAR(255),
    contact_number VARCHAR(20),
    fee DECIMAL(10, 2) -- Provider fees
);


CREATE TABLE BillingInformation (
    bill_id INT PRIMARY KEY,
    patient_id INT,
    provider_id INT,
    billing_date DATE,
    amount_due DECIMAL(10, 2),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (provider_id) REFERENCES Providers(provider_id)
);


CREATE TABLE InsuranceCompanies (
    insurance_id INT PRIMARY KEY,
    insurance_name VARCHAR(100),
    contact_number VARCHAR(20)
);


CREATE TABLE Claims (
    claim_id INT PRIMARY KEY,
    bill_id INT,
    insurance_id INT,
    claim_date DATE,
    claim_amount DECIMAL(10, 2),
    status VARCHAR(20),
    FOREIGN KEY (bill_id) REFERENCES BillingInformation(bill_id),
    FOREIGN KEY (insurance_id) REFERENCES InsuranceCompanies(insurance_id)
);
