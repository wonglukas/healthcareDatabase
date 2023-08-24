/*Create a view of all staff availability with their department, name, days off, notes*/

CREATE view staff_availability(employee_department, employee_firstname, employee_lastname, weekly_availability, employee_specified_daysoff, employee_availability_notes) AS 
(SELECT s.department, s.first_name, s.last_name, ea.weekly_available_days, ea.specified_days_off, ea.notes
FROM staff s, employee_availability ea
WHERE s.employee_number = ea.employee_number
)
ORDER BY s.last_name;

/*Create a view of upcoming appointments for doctors with the patients reason, name and phone number*/

CREATE view upcoming_appts(appointment_date, appointment_time, appointment_reason, doctor_department, doctor_firstname, doctor_lastname, patient_firstname, patient_lastname, patient_contact) AS 
(SELECT a.appt_date, a.appt_time, a.appt_reason, s.department, s.first_name, s.last_name, p.first_name, p.last_name, p.phone_no
FROM medical_staff ms, staff s, patients p, appointment a, staff_manages_appointments sma
WHERE a.appt_date > CURRENT_DATE
    and a.appt_id = sma.appt_id
    and sma.medical_provider_id = ms.medical_provider_id
    and ms.employee_number = s.employee_number
    and a.patient_id = p.patient_id)
ORDER BY a.appt_date, a.appt_time;

/*Create a view of supplies, quantity, and amount used since last shipment*/

CREATE view item_information(item_name, item_location, item_amount_used, item_quantity_remaining) AS
(SELECT s.item, s.storage_location, (SUM(sh.num_recieved) - s.quantity), s.quantity
FROM supplies s, shipment_info sh
WHERE sh.item_id = s.item_id
GROUP BY s.item, s.storage_location, s.quantity
)
ORDER BY s.item;

/*Create a view of all appointments*/

CREATE view all_appts(appointment_date, appointment_time, appointment_reason, doctor_department, doctor_firstname, doctor_lastname, patient_firstname, patient_lastname) AS 
(SELECT a.appt_date, a.appt_time, a.appt_reason, s.department, s.first_name, s.last_name, p.first_name, p.last_name
FROM medical_staff ms, staff s, patients p, appointment a, staff_manages_appointments sma
WHERE a.appt_id = sma.appt_id
    and sma.medical_provider_id = ms.medical_provider_id
    and ms.employee_number = s.employee_number
    and a.patient_id = p.patient_id)
ORDER BY a.appt_date DESC, a.appt_time DESC;

/*Create a view of patient contact information*/

CREATE view patient_contact(patient_firstname, patient_lastname, phone_number, email, mailing_address) AS 
(SELECT first_name, last_name, phone_no, email, address
FROM patients)
ORDER BY last_name;

/*Create a view of medical contact information*/

CREATE view medical_staff_contact(first_name, last_name, department, phone_number, email, mailing_address) AS 
(SELECT first_name, last_name, department, phone_no, email, address
FROM staff s, medical_staff ms
WHERE s.employee_number = ms.employee_number)
ORDER BY department, last_name;

/*Create a view of non-medical contact information*/

CREATE view non_medical_staff_contact(first_name, last_name, department, phone_number, email, mailing_address) AS 
(SELECT first_name, last_name, department, phone_no, email, address
FROM staff s LEFT JOIN medical_staff ms ON s.employee_number = ms.employee_number
WHERE s.employee_number IS NOT NULL AND ms.employee_number IS NULL)
ORDER BY department, last_name;

/*Create a view of supply manipulation done by staff*/

CREATE view staff_supplies_usage(first_name, last_name, department, item) AS 
(SELECT st.first_name, st.last_name, st.department, s.item
FROM staff st, staff_manages_supplies sms, supplies s
WHERE st.employee_number = sms.employee_number
    and sms.item_id = s.item_id
)
ORDER BY st.last_name;

/*Create a view of shipment with all ids replaced by the article name*/

CREATE view shipment_decoded(item, supplier, num_recieved, date_recieved, expiry_date) AS 
(SELECT supplies.item, suppliers.supplier, shipment_info.num_recieved, shipment_info.date_recieved, shipment_info.expiry_date
FROM supplies, suppliers, shipment_info
WHERE supplies.item_id = shipment_info.item_id
    and suppliers.supplier_id = shipment_info.supplier_id
)
ORDER BY date_recieved DESC;

/*Create a view of supplies, quantity, and amount used since last shipment
CREATE view item_information(item_name, item_supplier, item_location, item_amount_used, item_quantity_remaining) AS
(SELECT sh.item_id, sh.supplier, s.item, (SUM(sh.num_recieved) - s.quantity), s.quantity
FROM supplies s, shipment_info sh
WHERE sh.item_id = s.item_id
GROUP BY sh.item_id, sh.supplier, s.item, s.quantity
);
*/