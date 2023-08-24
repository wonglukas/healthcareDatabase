/*Create a view of all staff availability with their department, name, days off, notes*/
CREATE view staff_availability(employee_department, employee_lastname, weekly_availability, employee_specified_daysoff, employee_availability_notes) AS 
(SELECT s.department, s.last_name, ea.weekly_available_days, ea.specified_days_off, ea.notes
FROM staff s, employee_availability ea
WHERE s.employee_number = ea.employee_number
);

/*Create a view of upcomming appointments for doctors with the patients reason, name and phone number*/
CREATE view upcomming_appts(appointment_date, appointment_time, appointment_reason, doctor_department, doctor_lastname, patient_firstname, patient_lastname, patient_contact) AS 
(SELECT a.appt_date, a.appt_time, a.appt_reason, s.department, s.last_nane, p.first_name, p.last_name, p.phone_no
FROM medical_staff ms, staff s, patients p, appointment a, staff_manages_appointments sma
WHERE (a.appt_date > CURRENT_DATE
    and sma.appt_id = a.appt_id
    and sma.medical_provider_id = ms.medical_provider_id
    and ms.employee_number = s.employee_number
    and a.patient_id = p.patient_id)
ORDER BY a.appt_date
);

/*create a view of supplies, quantity, and amount used since last shipment*/
CREATE view item_information(item_name, item_supplier, item_location, item_amount_used_since_last_shippment, item_quantity_remaining) AS
(SELECT s.item, isi.supplier, s.storage_location, (isi.num_recieved - s.quantity), s.quantity
FROM supplies s, item_supply_info isi
WHERE s.item_id = isi.item_id
);