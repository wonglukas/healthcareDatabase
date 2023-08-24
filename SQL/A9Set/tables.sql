CREATE TABLE staff(
    employee_number             NUMBER(6) NOT NULL CHECK (employee_number BETWEEN 100000 AND 999999),
    SIN                         NUMBER(9) NOT NULL UNIQUE,
    first_name                  VARCHAR(20) NOT NULL,
    last_name                   VARCHAR(20) NOT NULL,
    department                  VARCHAR(20) NOT NULL,
    DOB                         DATE,
    phone_no                    VARCHAR(13),
    email                       VARCHAR(32),
    address                     VARCHAR(32), 
    PRIMARY KEY (employee_number)
);

CREATE TABLE medical_staff(
    employee_number		        NUMBER(6) NOT NULL UNIQUE,
    medical_provider_id         NUMBER(6) NOT NULL CHECK (medical_provider_id BETWEEN 100000 AND 999999),
    PRIMARY KEY (medical_provider_id),
        FOREIGN KEY (employee_number) REFERENCES staff(employee_number)
);

CREATE TABLE patients(
    patient_id  		    	NUMBER(8) NOT NULL CHECK (patient_id BETWEEN 10000000 AND 99999999),
    first_name	    		    VARCHAR(20) NOT NULL,
    last_name		        	VARCHAR(20) NOT NULL, 
    gender			            VARCHAR(6),
    DOB				            DATE,
    phone_no		        	VARCHAR(13),
    email		            	VARCHAR(32),
    address		            	VARCHAR(32), 
    PRIMARY KEY (patient_id)
);

CREATE TABLE appointment(
    appt_id                     NUMBER(9) NOT NULL CHECK (appt_id BETWEEN 100000000 AND 999999999),
    patient_id                  NUMBER(8) NOT NULL,
    appt_creation_date          DATE DEFAULT CURRENT_DATE,
    appt_date                   DATE NOT NULL,
    appt_time                   NUMBER(2) NOT NULL,
    appt_reason                 VARCHAR(50),
    PRIMARY KEY (appt_id),
        FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

CREATE TABLE patient_medical_info(
    patient_id		        	NUMBER(8) NOT NULL,
    ohip_number	    	    	VARCHAR(12) NOT NULL UNIQUE,
    current_med		        	VARCHAR(20) DEFAULT 'None',
    notes			            VARCHAR(50) DEFAULT 'None',
    PRIMARY KEY (patient_id),
        FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
); 

CREATE TABLE staff_manages_appointments(
    appt_id		            	NUMBER(9) NOT NULL,
    medical_provider_id     	NUMBER(6) NOT NULL,
        FOREIGN KEY (appt_id) REFERENCES appointment(appt_id),
        FOREIGN KEY (medical_provider_id) REFERENCES medical_staff(medical_provider_id),
        UNIQUE (appt_id, medical_provider_id)
);

CREATE TABLE employee_availability(
    employee_number 		    NUMBER(6) NOT NULL,
    available_sick_days     	NUMBER(3) NOT NULL,
    available_pto_days 	    	NUMBER(3) NOT NULL,
    specified_days_off 	    	VARCHAR(15) DEFAULT 'None',
    weekly_available_days 	    VARCHAR(27) NOT NULL,
    notes 			            VARCHAR(50) DEFAULT 'None',
    PRIMARY KEY (employee_number),
        FOREIGN KEY (employee_number) REFERENCES staff(employee_number)
);

CREATE TABLE supplies(
    item_id 		        	NUMBER(4) NOT NULL CHECK (item_id BETWEEN 1000 AND 9999),
    item 			            VARCHAR(20) NOT NULL,
    quantity 			        NUMBER(4) NOT NULL CHECK (quantity >= 0),
    storage_location            VARCHAR(16) NOT NULL,
    PRIMARY KEY (item_id)
); 

CREATE TABLE staff_manages_supplies(
    employee_number             NUMBER(6) NOT NULL,
    item_id			            NUMBER(4) NOT NULL,
        FOREIGN KEY (item_id) REFERENCES supplies(item_id),
        FOREIGN KEY (employee_number) REFERENCES staff(employee_number),
        UNIQUE (item_id, employee_number)
);

CREATE TABLE suppliers(
    supplier_id                 NUMBER(4) NOT NULL CHECK (supplier_id BETWEEN 1000 AND 9999),
    supplier                    VARCHAR(20) NOT NULL,
    notes 			            VARCHAR(50) DEFAULT 'None',
    PRIMARY KEY (supplier_id)
);

CREATE TABLE shipment_info(
    shipment_id                 NUMBER(6) NOT NULL,
    item_id                     NUMBER(4) NOT NULL,
    supplier_id			        NUMBER(4) NOT NULL,
    num_recieved		        NUMBER(4) NOT NULL CHECK (num_recieved > 0),
    date_recieved	 	        DATE NOT NULL,
    expiry_date		 	        DATE NOT NULL,
    PRIMARY KEY (shipment_id),
        FOREIGN KEY (item_id) REFERENCES supplies(item_id),
        FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);