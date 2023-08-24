CREATE TABLE staff(
    employee_number 	NUMBER(10) NOT NULL CHECK (employee_number BETWEEN 1000000000 AND 9999999999),
    SIN 				NUMBER(9) NOT NULL,
    first_name			VARCHAR(20) NOT NULL,
    last_name			VARCHAR(20) NOT NULL,
    department			VARCHAR(20),
    DOB 				DATE,
    phone_no 			VARCHAR(13),
    email				VARCHAR(32),
    address 			VARCHAR(20), 
    primary key (employee_number)
);

CREATE TABLE medical_staff(
	employee_number		NUMBER(10) NOT NULL,
	medical_provider_id NUMBER(10) NOT NULL CHECK (medical_provider_id BETWEEN 1000000000 AND 9999999999),
    PRIMARY KEY (medical_provider_id),
	FOREIGN KEY (employee_number) REFERENCES staff(employee_number)
);

CREATE TABLE patients(
	patient_id			NUMBER(10) NOT NULL,
    first_name			VARCHAR(20) NOT NULL,
    last_name			VARCHAR(20) NOT NULL, 
    gender				VARCHAR(10),
    DOB					DATE,
    phone_no			VARCHAR(13),
    email				VARCHAR(32),
    address				VARCHAR(20), 
    primary key (patient_id)
);

CREATE TABLE appointment(
	patient_id			NUMBER(10) NOT NULL,
    medical_provider_id NUMBER(10) NOT NULL,
	appt_id				NUMBER(10) NOT NULL CHECK (appt_id BETWEEN 1000000000 AND 9999999999),
    appt_creation_date 	DATE NOT NULL,
    appt_date 			DATE NOT NULL,
    appt_time 			number NOT NULL,
    appt_reason 		VARCHAR(50),
    primary key (appt_id),
	FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
	FOREIGN KEY (medical_provider_id) REFERENCES medical_staff(medical_provider_id)
);

ALTER TABLE patients ADD (
    appt_id     NUMBER(10) REFERENCES appointment(appt_id)
);

CREATE TABLE works_on (
	patient_id			NUMBER(10) NOT NULL,
	medical_provider_id	NUMBER(10) NOT NULL,
	FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
	FOREIGN KEY (medical_provider_id) REFERENCES medical_staff(medical_provider_id),
	UNIQUE (patient_id, medical_provider_id)
);

CREATE TABLE patient_medical_health_info(
	patient_id			NUMBER(10) NOT NULL,
    medical_provider_id NUMBER(10),
    ohip_number			VARCHAR(12) NOT NULL,
    prev_appointment	DATE,
    current_med			VARCHAR(20),
    notes				VARCHAR(50),
    PRIMARY KEY (patient_id),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (medical_provider_id) REFERENCES medical_staff(medical_provider_id)
); 

CREATE TABLE staff_manages_appointments(
	appt_id				NUMBER(10) NOT NULL,
	medical_provider_id	NUMBER(10) NOT NULL,
	FOREIGN KEY (appt_id) REFERENCES appointment(appt_id),
	FOREIGN KEY (medical_provider_id) REFERENCES medical_staff(medical_provider_id),
	UNIQUE (appt_id, medical_provider_id)
);

CREATE TABLE employee_availability(
    employee_number 		NUMBER(10) NOT NULL,
    available_sick_days 	NUMBER(3) NOT NULL,
    available_pto_days 		NUMBER(3) NOT NULL,
    specified_days_off 		VARCHAR(15) NOT NULL,
    weekly_available_days 	VARCHAR(27) NOT NULL,
    notes 					VARCHAR(50),
    PRIMARY KEY (employee_number),
	FOREIGN KEY (employee_number) REFERENCES staff(employee_number)
);

CREATE TABLE supplies(
    item_id 			NUMBER(10) NOT NULL CHECK (item_id BETWEEN 1000000000 AND 9999999999),
    item 				VARCHAR(15) NOT NULL,
    quantity 			NUMBER(4) NOT NULL,
	storage_location	VARCHAR(20) NOT NULL,
    PRIMARY KEY (item_id)
); 

CREATE TABLE staff_manages_supplies(
	item_id				NUMBER(10) NOT NULL,
	employee_number 	NUMBER(10) NOT NULL,
	FOREIGN KEY (item_id) REFERENCES supplies(item_id),
	FOREIGN KEY (employee_number) REFERENCES staff(employee_number),
	UNIQUE (item_id, employee_number)
);

CREATE TABLE item_supply_info(
	item_id				NUMBER(10) NOT NULL,
    supplier			VARCHAR(20) NOT NULL,
	num_recieved		NUMBER(4) NOT NULL,
    date_recieved	 	DATE NOT NULL,
    expiry_date		 	DATE NOT NULL,
	FOREIGN KEY (item_id) REFERENCES supplies(item_id)
);