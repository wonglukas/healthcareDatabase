
-- Staff:

INSERT INTO staff (employee_number, SIN, first_name, last_name) VALUES
    (2710943245, 512409887, 'John', 'Doe');

UPDATE staff
SET department = 'Neurology', dob = date '1991-05-21', phone_no = '647-555-5555'
WHERE employee_number = 2710943245;

INSERT INTO staff (employee_number, SIN, first_name, last_name, department, dob, phone_no) VALUES
    (2001664512, 351550996, 'Jane', 'Moe', 'Pediatrics', date '1986-11-02', '647-111-5555');

INSERT INTO staff (employee_number, SIN, first_name, last_name, department, dob, phone_no) VALUES
    (2856291765, 709812897, 'Korov', 'Shevsk', 'Pediatrics', date '1983-09-05', '647-999-4444');
    
INSERT INTO staff (employee_number, SIN, first_name, last_name, department, dob, phone_no) VALUES
    (4985114155, 985179111, 'Steve', 'Benz', 'Dermatology', date '1989-04-17', '647-888-5555');
    
INSERT INTO staff (employee_number, SIN, first_name, last_name, department, dob, phone_no) VALUES
    (3893609861, 434814760, 'Pturr', 'Khee', 'Pulmonology', date '1992-01-13', '647-777-3333');

INSERT INTO staff (employee_number, SIN, first_name, last_name, department, dob, phone_no) VALUES
    (3048272631, 526174927, 'Arne', 'Chun', 'IT', date '1998-02-25', '647-333-1111');
    
INSERT INTO staff (employee_number, SIN, first_name, last_name, department, dob, phone_no) VALUES
    (3358135813, 503098914, 'Christopher', 'Zhu', 'IT', date '1995-09-03', '647-000-2222');

-- Employee Availability:

INSERT INTO employee_availability (employee_number, available_sick_days, available_pto_days, specified_days_off, weekly_available_days, notes) VALUES
    (2001664512, 2, 5, 'None', 'MON TUE WED', 'worked for 25 years');

INSERT INTO employee_availability (employee_number, available_sick_days, available_pto_days, specified_days_off, weekly_available_days, notes) VALUES
    (2856291765, 1, 1, 'None', 'MON WED THU', 'worked for 4 years');

INSERT INTO employee_availability (employee_number, available_sick_days, available_pto_days, specified_days_off, weekly_available_days, notes) VALUES
    (4985114155, 3, 9, 'None', 'MON WED', 'worked for 10 years');

INSERT INTO employee_availability (employee_number, available_sick_days, available_pto_days, specified_days_off, weekly_available_days, notes) VALUES
    (3893609861, 4, 8, 'None', 'TUE WED', 'worked for 27 years');

INSERT INTO employee_availability (employee_number, available_sick_days, available_pto_days, specified_days_off, weekly_available_days, notes) VALUES
    (3048272631, 5, 7, 'None', 'MON TUE FRI', 'worked for 21 years');

INSERT INTO employee_availability (employee_number, available_sick_days, available_pto_days, specified_days_off, weekly_available_days, notes) VALUES
    (3358135813, 6, 6, 'None', 'MON TUE SUN', 'worked for 20 years');

-- Medical Staff:

INSERT INTO medical_staff (employee_number, medical_provider_id) VALUES
    (2710943245, 9090181473);

INSERT INTO medical_staff (employee_number, medical_provider_id) VALUES
    (2001664512, 8103742192);
    
INSERT INTO medical_staff (employee_number, medical_provider_id) VALUES
    (2856291765, 6159109109);
    
INSERT INTO medical_staff (employee_number, medical_provider_id) VALUES
    (4985114155, 1871922811);
    
INSERT INTO medical_staff (employee_number, medical_provider_id) VALUES
    (3893609861, 5209158710);
    
-- Supplies:

INSERT INTO supplies (item_id, item, quantity, storage_location) VALUES
    (1014442012, 'Bandages', 182, 'MAIN');
    
INSERT INTO supplies (item_id, item, quantity, storage_location) VALUES
    (1224397410, 'Swabs', 301, 'MAIN');
    
INSERT INTO supplies (item_id, item, quantity, storage_location) VALUES
    (1415819012, 'Gauze', 64, 'MAIN');

INSERT INTO supplies (item_id, item, quantity, storage_location) VALUES
    (2014892004, 'Syringes', 37, 'SUB1');

INSERT INTO supplies (item_id, item, quantity, storage_location) VALUES
    (3781714953, 'Medical Gloves', 144, 'SUB2');
    
-- Item Supply Info:

INSERT INTO item_supply_info (item_id, supplier, num_recieved, date_recieved, expiry_date) VALUES
    (1014442012, 'SudsSupplies', 100, date '2022-03-12', date '2026-01-01');
    
INSERT INTO item_supply_info (item_id, supplier, num_recieved, date_recieved, expiry_date) VALUES
    (1014442012, 'MarksMedSupplies', 100, date '2022-07-20', date '2026-06-01');
    
INSERT INTO item_supply_info (item_id, supplier, num_recieved, date_recieved, expiry_date) VALUES
    (1224397410, 'SudsSupplies', 500, date '2021-11-04', date '2025-06-01');
    
INSERT INTO item_supply_info (item_id, supplier, num_recieved, date_recieved, expiry_date) VALUES
    (1415819012, 'MarksMedSupplies', 100, date '2022-06-09', date '2026-06-01');
    
INSERT INTO item_supply_info (item_id, supplier, num_recieved, date_recieved, expiry_date) VALUES
    (2014892004, 'ONMedSupplies', 150, date '2022-08-30', date '2024-01-01');
    
INSERT INTO item_supply_info (item_id, supplier, num_recieved, date_recieved, expiry_date) VALUES
    (3781714953, 'OwenCompany', 500, date '2021-02-02', date '2025-01-01');
    
-- Staff Manages Supplies:

INSERT INTO staff_manages_supplies (item_id, employee_number) VALUES
    (1014442012, 2001664512);

INSERT INTO staff_manages_supplies (item_id, employee_number) VALUES
    (1224397410, 2001664512);

INSERT INTO staff_manages_supplies (item_id, employee_number) VALUES
    (1415819012, 2001664512);

INSERT INTO staff_manages_supplies (item_id, employee_number) VALUES
    (2014892004, 3893609861);

INSERT INTO staff_manages_supplies (item_id, employee_number) VALUES
    (3781714953, 3893609861);

-- Patients:

INSERT INTO patients (patient_id, first_name, last_name, gender, DOB, phone_no, email) VALUES
    (2734363968, 'Korov', 'Wong', 'male', date '1993-12-05', '647-999-5000', 'hello@gmail.com');

INSERT INTO patients (patient_id, first_name, last_name, gender, DOB, phone_no, email) VALUES
    (1882107183, 'Korov', 'Pollo', 'female', date '1963-06-09', '437-999-5000', 'hellomama@gmail.com');    

INSERT INTO patients (patient_id, first_name, last_name, gender, DOB, phone_no, email) VALUES
    (6018198032, 'Marco', 'Pollo', 'male', date '1923-06-09', '416-999-4167', 'hellomama@hotmail.com');    

INSERT INTO patients (patient_id, first_name, last_name, gender, DOB, phone_no, email) VALUES
    (7227062332, 'Kapow', 'Kachow', 'female', date '1923-06-09', '647-876-1928', 'pegasus@gmail.com');    

-- Patient Medical Health Info:

INSERT INTO patient_medical_health_info (patient_id, medical_provider_id, ohip_number, prev_appointment, current_med, notes) VALUES
    (2734363968, 9090181473, 213456798912, date '2007-12-05', 'advil', 'none');

INSERT INTO patient_medical_health_info (patient_id, medical_provider_id, ohip_number, prev_appointment, current_med, notes) VALUES
    (1882107183, 9090181473, 813456453912, date '2009-10-12', 'tylenol', 'missing limb');

INSERT INTO patient_medical_health_info (patient_id, medical_provider_id, ohip_number, prev_appointment, current_med, notes) VALUES
    (6018198032, 6159109109, 462956453123, date '2020-06-09', 'none', 'previous heart transplant');

INSERT INTO patient_medical_health_info (patient_id, medical_provider_id, ohip_number, prev_appointment, current_med, notes) VALUES
    (7227062332, 5209158710, 321956453321, date '2021-08-09', 'codine', 'missing limb');

-- Works On:

INSERT INTO works_on (patient_id, medical_provider_id) VALUES
    (2734363968, 9090181473);

INSERT INTO works_on (patient_id, medical_provider_id) VALUES
    (1882107183, 9090181473);

INSERT INTO works_on (patient_id, medical_provider_id) VALUES
    (6018198032, 6159109109);

INSERT INTO works_on (patient_id, medical_provider_id) VALUES
    (7227062332, 5209158710);

-- Appointment:

INSERT INTO appointment (patient_id, medical_provider_id, appt_id, appt_creation_date, appt_date, appt_time, appt_reason) VALUES
    (2734363968, 9090181473, 8063062423, date '2007-12-05', date '2022-12-05', '12', 'checkup');

INSERT INTO appointment (patient_id, medical_provider_id, appt_id, appt_creation_date, appt_date, appt_time, appt_reason) VALUES
    (1882107183, 9090181473, 7739976513, date '2009-10-11', date '2022-10-09', '17', 'suspected growth');

INSERT INTO appointment (patient_id, medical_provider_id, appt_id, appt_creation_date, appt_date, appt_time, appt_reason) VALUES
    (6018198032, 6159109109, 8676901663, date '2018-10-11', date '2022-10-06', '15', 'suspected growth on neck');

INSERT INTO appointment (patient_id, medical_provider_id, appt_id, appt_creation_date, appt_date, appt_time, appt_reason) VALUES
    (7227062332, 5209158710, 2720865861, date '2020-12-11', date '2022-07-07', '14', 'suspected cancer');

-- Staff Manages Appointment:

INSERT INTO staff_manages_appointments (appt_id, medical_provider_id) VALUES
    (8063062423, 9090181473);

INSERT INTO staff_manages_appointments (appt_id, medical_provider_id) VALUES
    (7739976513, 9090181473);

INSERT INTO staff_manages_appointments (appt_id, medical_provider_id) VALUES
    (8676901663, 6159109109);

INSERT INTO staff_manages_appointments (appt_id, medical_provider_id) VALUES
    (2720865861, 5209158710);