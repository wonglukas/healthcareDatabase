
-- Staff:

/*
INSERT INTO staff (employee_number, SIN, first_name, last_name) VALUES
    (2710943245, 512409887, 'John', 'Doe');

UPDATE staff
SET department = 'Neurology', dob = date '1991-05-21', phone_no = '647-555-5555'
WHERE employee_number = 2710943245;
*/

INSERT INTO staff (employee_number, SIN, first_name, last_name, department, dob, phone_no) VALUES
    (271094, 512409887, 'John', 'Doe', 'Neurology', date '1991-05-21', '647-555-5555');

INSERT INTO staff (employee_number, SIN, first_name, last_name, department, dob, phone_no) VALUES
    (200166, 351550996, 'Jane', 'Moe', 'Pediatrics', date '1986-11-02', '647-111-5555');

INSERT INTO staff (employee_number, SIN, first_name, last_name, department, dob, phone_no) VALUES
    (285629, 709812897, 'Korov', 'Shevsk', 'Pediatrics', date '1983-09-05', '647-999-4444');
    
INSERT INTO staff (employee_number, SIN, first_name, last_name, department, dob, phone_no) VALUES
    (498511, 985179111, 'Steve', 'Benz', 'Dermatology', date '1989-04-17', '647-888-5555');
    
INSERT INTO staff (employee_number, SIN, first_name, last_name, department, dob, phone_no) VALUES
    (389360, 434814760, 'Pturr', 'Khee', 'Pulmonology', date '1992-01-13', '647-777-3333');

INSERT INTO staff (employee_number, SIN, first_name, last_name, department, dob, phone_no) VALUES
    (304827, 526174927, 'Arne', 'Chun', 'IT', date '1998-02-25', '647-333-1111');
    
INSERT INTO staff (employee_number, SIN, first_name, last_name, department, dob, phone_no) VALUES
    (335813, 503098914, 'Christopher', 'Zhu', 'IT', date '1995-09-03', '647-000-2222');
    
INSERT INTO staff (employee_number, SIN, first_name, last_name, department, dob, phone_no) VALUES
    (566823, 662919841, 'Chuna', 'Mehlt', 'Customer Service', date '1994-02-03', '647-111-2222');

-- Medical Staff:

INSERT INTO medical_staff (employee_number, medical_provider_id) VALUES
    (271094, 909018);

INSERT INTO medical_staff (employee_number, medical_provider_id) VALUES
    (200166, 810374);
    
INSERT INTO medical_staff (employee_number, medical_provider_id) VALUES
    (285629, 615910);
    
INSERT INTO medical_staff (employee_number, medical_provider_id) VALUES
    (498511, 187192);
    
INSERT INTO medical_staff (employee_number, medical_provider_id) VALUES
    (389360, 520915);

-- Employee Availability:

INSERT INTO employee_availability (employee_number, available_sick_days, available_pto_days, weekly_available_days, notes) VALUES
    (271094, 1, 4, 'FRI SAT SUN', 'worked for 7 years');

INSERT INTO employee_availability (employee_number, available_sick_days, available_pto_days, weekly_available_days, notes) VALUES
    (200166, 2, 5, 'MON TUE WED', 'worked for 25 years');

INSERT INTO employee_availability (employee_number, available_sick_days, available_pto_days, weekly_available_days, notes) VALUES
    (285629, 1, 1, 'MON WED THU', 'worked for 4 years');

INSERT INTO employee_availability (employee_number, available_sick_days, available_pto_days, weekly_available_days, notes) VALUES
    (498511, 3, 9, 'MON WED', 'worked for 10 years');

INSERT INTO employee_availability (employee_number, available_sick_days, available_pto_days, weekly_available_days, notes) VALUES
    (389360, 4, 8, 'TUE WED', 'worked for 27 years');

INSERT INTO employee_availability (employee_number, available_sick_days, available_pto_days, weekly_available_days, notes) VALUES
    (304827, 5, 7, 'MON TUE FRI', 'worked for 21 years');

INSERT INTO employee_availability (employee_number, available_sick_days, available_pto_days, weekly_available_days, notes) VALUES
    (335813, 6, 6, 'MON TUE SUN', 'worked for 20 years');

INSERT INTO employee_availability (employee_number, available_sick_days, available_pto_days, weekly_available_days, notes) VALUES
    (566823, 7, 2, 'MON TUE WED THU', 'worked for 3 years');

-- Patients:

INSERT INTO patients (patient_id, first_name, last_name, gender, DOB, phone_no, email) VALUES
    (27343639, 'Korov', 'Wong', 'male', date '1993-12-05', '647-999-5000', 'hello@gmail.com');

INSERT INTO patients (patient_id, first_name, last_name, gender, DOB, phone_no, email) VALUES
    (18821071, 'Korov', 'Pollo', 'male', date '1963-07-09', '416-999-5000', 'hellomama@gmail.com');    

INSERT INTO patients (patient_id, first_name, last_name, gender, DOB, phone_no, email) VALUES
    (60181980, 'Marco', 'Pollo', 'male', date '1943-06-09', '416-999-4167', 'hellomama@hotmail.com');    

INSERT INTO patients (patient_id, first_name, last_name, gender, DOB, phone_no, email) VALUES
    (72270623, 'Kapow', 'Kachow', 'male', date '1943-06-09', '647-876-1928', 'pegasus@gmail.com');

INSERT INTO patients (patient_id, first_name, last_name, gender, DOB, phone_no, email) VALUES
    (38151641, 'Myra', 'Cali', 'female', date '1987-04-19', '647-300-1000', 'mamahello@hotmail.com');        

INSERT INTO patients (patient_id, first_name, last_name, gender, DOB, phone_no, email) VALUES
    (28821011, 'Tursa', 'Sidii', 'female', date '1992-01-21', '647-333-3333', 'sidiiot@gmail.com');       

INSERT INTO patients (patient_id, first_name, last_name, gender, DOB, phone_no, email) VALUES
    (27343640, 'Sumtin', 'Wong', 'female', date '1988-03-11', '647-900-5000', 'itsallwong@gmail.com');       

INSERT INTO patients (patient_id, first_name, last_name, gender, DOB, phone_no, email) VALUES
    (57313728, 'Aileeh', 'Un', 'female', date '1999-06-11', '647-101-1010', 'from.mars@gmail.com');           

-- Patient Medical Health Info:

INSERT INTO patient_medical_info (patient_id, ohip_number, current_med) VALUES
    (27343639, '2134567989DF', 'Advil');

INSERT INTO patient_medical_info (patient_id, ohip_number, current_med, notes) VALUES
    (18821071, '8134564539TG', 'Tylenol', 'missing limb');

INSERT INTO patient_medical_info (patient_id, ohip_number, notes) VALUES
    (60181980, '4629564531ML', 'previous heart transplant');

INSERT INTO patient_medical_info (patient_id, ohip_number, current_med, notes) VALUES
    (72270623, '3219564533TU', 'Codine', 'missing limb');

INSERT INTO patient_medical_info (patient_id, ohip_number) VALUES
    (38151641, '2134501539TG');

INSERT INTO patient_medical_info (patient_id, ohip_number, notes) VALUES
    (28821011, '4349564531ID', 'missing brain cells');

INSERT INTO patient_medical_info (patient_id, ohip_number, current_med) VALUES
    (27343640, '2134561349DE', 'Ibuprofen');

INSERT INTO patient_medical_info (patient_id, ohip_number, notes) VALUES
    (57313728, '1131060349AA', 'skin condition');

-- Appointment:

INSERT INTO appointment (appt_id, patient_id, appt_creation_date, appt_date, appt_time, appt_reason) VALUES
    (806306242, 27343639, date '2007-12-05', date '2022-12-05', '12', 'checkup');

INSERT INTO appointment (appt_id, patient_id, appt_creation_date, appt_date, appt_time, appt_reason) VALUES
    (773997651, 18821071, date '2011-12-27', date '2012-01-09', '17', 'suspected growth');

INSERT INTO appointment (appt_id, patient_id, appt_creation_date, appt_date, appt_time, appt_reason) VALUES
    (571891915, 18821071, date '2011-11-05', date '2012-12-27', '10', 'checkup');

INSERT INTO appointment (appt_id, patient_id, appt_creation_date, appt_date, appt_time, appt_reason) VALUES
    (867690166, 60181980, date '2018-10-11', date '2022-10-06', '15', 'suspected growth on neck');

INSERT INTO appointment (appt_id, patient_id, appt_creation_date, appt_date, appt_time, appt_reason) VALUES
    (272086586, 72270623, date '2020-12-07', date '2022-07-07', '14', 'suspected cancer');

INSERT INTO appointment (appt_id, patient_id, appt_creation_date, appt_date, appt_time, appt_reason) VALUES
    (576091152, 27343640, date '2022-10-01', date '2022-12-16', '16', 'checkup');

INSERT INTO appointment (appt_id, patient_id, appt_creation_date, appt_date, appt_time, appt_reason) VALUES
    (271576086, 38151641, date '2022-09-21', date '2023-02-17', '14', 'smelly syndrome');

INSERT INTO appointment (appt_id, patient_id, appt_creation_date, appt_date, appt_time, appt_reason) VALUES
    (181609152, 57313728, date '2022-10-23', date '2022-11-23', '18', 'checkup');
    
-- Supplies:

INSERT INTO supplies (item_id, item, quantity, storage_location) VALUES
    (1014, 'Bandages', 182, 'MAIN');
    
INSERT INTO supplies (item_id, item, quantity, storage_location) VALUES
    (1224, 'Swabs', 301, 'MAIN');
    
INSERT INTO supplies (item_id, item, quantity, storage_location) VALUES
    (1415, 'Gauze', 64, 'MAIN');

INSERT INTO supplies (item_id, item, quantity, storage_location) VALUES
    (1784, 'Cotton Balls', 417, 'MAIN');

INSERT INTO supplies (item_id, item, quantity, storage_location) VALUES
    (2014, 'Syringes', 37, 'SUB1');

INSERT INTO supplies (item_id, item, quantity, storage_location) VALUES
    (3781, 'Medical Gloves', 144, 'SUB2');

INSERT INTO supplies (item_id, item, quantity, storage_location) VALUES
    (2774, 'Wet Wipes', 27, 'SUB2');

-- Suppliers:

INSERT INTO suppliers (supplier_id, supplier, notes) VALUES
    (1759, 'SudsSupplies', 'None');

INSERT INTO suppliers (supplier_id, supplier, notes) VALUES
    (2656, 'MarksMedSupplies', 'None');

INSERT INTO suppliers (supplier_id, supplier, notes) VALUES
    (6732, 'ONMedSupplies', 'Primary Ontario medical supplier.');

INSERT INTO suppliers (supplier_id, supplier, notes) VALUES
    (3425, 'OwenCompany', 'Main glove supplier.');
    
-- Shipment Info:

INSERT INTO shipment_info (shipment_id, item_id, supplier_id, num_recieved, date_recieved, expiry_date) VALUES
    (111011, 1014, 1759, 100, date '2022-03-12', date '2026-01-01');
    
INSERT INTO shipment_info (shipment_id, item_id, supplier_id, num_recieved, date_recieved, expiry_date) VALUES
    (172371, 1014, 2656, 100, date '2022-07-20', date '2026-06-01');
    
INSERT INTO shipment_info (shipment_id, item_id, supplier_id, num_recieved, date_recieved, expiry_date) VALUES
    (209911, 1224, 1759, 500, date '2021-11-04', date '2025-06-01');
    
INSERT INTO shipment_info (shipment_id, item_id, supplier_id, num_recieved, date_recieved, expiry_date) VALUES
    (207532, 1415, 2656, 100, date '2022-06-09', date '2026-06-01');
    
INSERT INTO shipment_info (shipment_id, item_id, supplier_id, num_recieved, date_recieved, expiry_date) VALUES
    (216400, 1784, 1759, 850, date '2020-12-01', date '2026-01-01');
    
INSERT INTO shipment_info (shipment_id, item_id, supplier_id, num_recieved, date_recieved, expiry_date) VALUES
    (269162, 2014, 6732, 150, date '2022-08-30', date '2024-01-01');
    
INSERT INTO shipment_info (shipment_id, item_id, supplier_id, num_recieved, date_recieved, expiry_date) VALUES
    (321943, 3781, 3425, 500, date '2021-02-02', date '2025-01-01');

INSERT INTO shipment_info (shipment_id, item_id, supplier_id, num_recieved, date_recieved, expiry_date) VALUES
    (361718, 2774, 6732, 100, date '2022-08-30', date '2024-01-01');
    
INSERT INTO shipment_info (shipment_id, item_id, supplier_id, num_recieved, date_recieved, expiry_date) VALUES
    (103719, 1415, 2656, 50, date '2020-06-09', date '2022-06-01');

INSERT INTO shipment_info (shipment_id, item_id, supplier_id, num_recieved, date_recieved, expiry_date) VALUES
    (100714, 2774, 6732, 100, date '2019-08-30', date '2020-01-01');
    
-- Staff Manages Supplies:

INSERT INTO staff_manages_supplies (employee_number, item_id) VALUES
    (498511, 1014);

INSERT INTO staff_manages_supplies (employee_number, item_id) VALUES
    (200166, 1224);

INSERT INTO staff_manages_supplies (employee_number, item_id) VALUES
    (200166, 1415);

INSERT INTO staff_manages_supplies (employee_number, item_id) VALUES
    (389360, 2014);

INSERT INTO staff_manages_supplies (employee_number, item_id) VALUES
    (200166, 3781);

INSERT INTO staff_manages_supplies (employee_number, item_id) VALUES
    (271094, 2774);

-- Staff Manages Appointment:

INSERT INTO staff_manages_appointments (appt_id, medical_provider_id) VALUES
    (806306242, 909018);

INSERT INTO staff_manages_appointments (appt_id, medical_provider_id) VALUES
    (773997651, 909018);

INSERT INTO staff_manages_appointments (appt_id, medical_provider_id) VALUES
    (773997651, 187192);

INSERT INTO staff_manages_appointments (appt_id, medical_provider_id) VALUES
    (571891915, 909018);

INSERT INTO staff_manages_appointments (appt_id, medical_provider_id) VALUES
    (867690166, 615910);

INSERT INTO staff_manages_appointments (appt_id, medical_provider_id) VALUES
    (272086586, 520915);

INSERT INTO staff_manages_appointments (appt_id, medical_provider_id) VALUES
    (576091152, 520915);

INSERT INTO staff_manages_appointments (appt_id, medical_provider_id) VALUES
    (271576086, 187192);

INSERT INTO staff_manages_appointments (appt_id, medical_provider_id) VALUES
    (181609152, 187192);