CREATE TABLE patient_checkin (
	patient_id			NUMBER(10) NOT NULL,
	medical_provider_id	NUMBER(10) NOT NULL,
	FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
	FOREIGN KEY (medical_provider_id) REFERENCES medical_staff(medical_provider_id),
	UNIQUE (patient_id, medical_provider_id)
);