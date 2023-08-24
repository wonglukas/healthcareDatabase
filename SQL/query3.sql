
-- Q: How many staff members does the clinic have?

SELECT COUNT(employee_number)
FROM staff;

-- Q: List all staff members who work in Pediatrics.

SELECT employee_number, first_name, last_name
FROM staff
WHERE department = 'Pediatrics'
ORDER BY last_name;

-- Q: List all medical staff members with their id, name, and department.

SELECT medical_provider_id, first_name, last_name, department
FROM staff s, medical_staff m
WHERE s.employee_number = m.employee_number
ORDER BY last_name;

-- Q: Order items by the amount of times they were used.

SELECT i.item_id, s.item, (SUM(i.num_recieved) - s.quantity)
FROM supplies s, item_supply_info i
WHERE i.item_id = s.item_id
GROUP BY i.item_id, s.item, s.quantity
ORDER BY (SUM(i.num_recieved) - s.quantity) DESC;

-- Q: When was the last shipment of syringes?

SELECT s.item_id, s.item, i.date_recieved
FROM supplies s, item_supply_info i
WHERE s.item_id = i.item_id AND
      s.item_id = 2014892004;

-- Q: List all patients and their medical health information

SELECT p.patient_id, p.first_name, p.last_name, pm.prev_appointment, pm.current_med, pm.notes
FROM patients p, patient_medical_health_info pm
WHERE p.patient_id = pm.patient_id;

-- Q: How many appointments does the clinic have?

SELECT COUNT(appt_id)
FROM appointment;

-- Q: What staff is available on Monday?

SELECT s.employee_number, s.first_name, s.last_name, ea.weekly_available_days
FROM staff s, employee_availability ea
WHERE s.employee_number = ea.employee_number AND ea.weekly_available_days LIKE '%MON%';

-- Q: Who is older than 20?
SELECT first_name, last_name, DOB, patient_id
FROM patients p
WHERE EXTRACT (year FROM p.DOB) <= 2002;

-- Q: Order pending appointments by proximity to current time.

SELECT medical_provider_id, appt_id, appt_date
FROM appointment
WHERE appt_date > CURRENT_DATE
ORDER BY appt_date;