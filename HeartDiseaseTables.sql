// Patients Table:

CREATE TABLE patients(
	id SERIAL PRIMARY KEY,
	sex VARCHAR(5) NOT NULL,
	age SMALLINT NOT NULL,
	chest_pain_level SMALLINT NOT NULL
);

//Vitals Table:

CREATE TABLE vitals(
	id SERIAL PRIMARY KEY,
	patient_id INT REFERENCES patients(id),
	blood_pressure SMALLINT NOT NULL,
	cholesterol SMALLINT NOT NULL,
	heart_rate SMALLINT NOT NULL
);

// Update gender values from binary to strings:

UPDATE patients
SET sex = 'M'
WHERE sex = '1';

UPDATE patients
SET sex = 'F'
WHERE sex = '0';
