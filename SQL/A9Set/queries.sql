
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
FROM supplies s, shipment_info i
WHERE i.item_id = s.item_id
GROUP BY i.item_id, s.item, s.quantity
ORDER BY (SUM(i.num_recieved) - s.quantity) DESC;

-- Q: When was the most recent shipment of bandages?

SELECT s.item_id, s.item, i.date_recieved
FROM supplies s, shipment_info i
WHERE s.item_id = i.item_id AND
      s.item_id = 1014
ORDER BY i.date_recieved DESC
FETCH FIRST 1 ROWS ONLY;

-- Q: List all patients and their medical health information

SELECT p.patient_id, p.first_name, p.last_name, pm.current_med, pm.notes
FROM patients p, patient_medical_info pm
WHERE p.patient_id = pm.patient_id;

-- Q: How many appointments does the clinic have on record?

SELECT COUNT(appt_id)
FROM appointment;

-- Q: What staff is available on Monday?

SELECT s.employee_number, s.first_name, s.last_name, ea.weekly_available_days
FROM staff s, employee_availability ea
WHERE s.employee_number = ea.employee_number AND ea.weekly_available_days LIKE '%MON%';

-- Q: Who is 30 or older (ordered youngest to oldest)?

SELECT first_name, last_name, DOB, patient_id
FROM patients p
WHERE EXTRACT (year FROM p.DOB) <= (EXTRACT (year FROM CURRENT_DATE) - 30)
ORDER BY p.DOB DESC;

-- Q: Order pending appointments by proximity to current time.

SELECT appt_id, appt_date, p.first_name, p.last_name
FROM appointment a, patients p
WHERE a.patient_id = p.patient_id
    AND appt_date > CURRENT_DATE
ORDER BY appt_date;

-- Q: View patient that are currently on medication (+ the medication they're on).

SELECT patients.patient_id, patients.first_name, patients.last_name, patient_medical_info.OHIP_NUMBER, patient_medical_info.CURRENT_MED
FROM patients
INNER JOIN patient_medical_info
ON patients.patient_id = patient_medical_info.patient_id
WHERE NOT LOWER(patient_medical_info.current_med) = 'none';

-- Q: View employees that are available on Wednesday.

SELECT employee_availability.employee_number, employee_availability.weekly_available_days, staff.FIRST_NAME, staff.LAST_NAME
FROM employee_availability
INNER JOIN staff
ON employee_availability.employee_number=staff.employee_number
WHERE employee_availability.weekly_available_days LIKE '%WED%';

-- Q: Show all distinct suppliers.

SELECT DISTINCT supplier
FROM suppliers
ORDER BY supplier;

-- Q: List how many medical staff members there are

SELECT COUNT(medical_provider_id)
FROM medical_staff;

-- Q: List all staff that is not medical staff

SELECT DISTINCT s.employee_number, s.first_name, s.last_name, s.department
FROM staff s
WHERE NOT EXISTS
	(SELECT employee_number
	FROM medical_staff ms
 	WHERE ms.employee_number = s.employee_number);
		
-- Q: List patients that aren't on medication and patients that have upcoming appts.

SELECT p.patient_id, first_name, last_name
FROM patients p, patient_medical_info pm
WHERE p.patient_id = pm.patient_id
    AND LOWER(pm.current_med) = 'none'
UNION
SELECT p.patient_id, first_name, last_name
FROM patients p, appointment a
WHERE p.patient_id = a.patient_id
    AND a.appt_date > CURRENT_DATE
ORDER BY last_name DESC;
		
-- Q: List patients that are on medication and that have upcoming appts.

SELECT p.patient_id, first_name, last_name
FROM patients p, patient_medical_info pm
WHERE p.patient_id = pm.patient_id
    AND NOT LOWER(pm.current_med) = 'none'
INTERSECT
SELECT p.patient_id, first_name, last_name
FROM patients p, appointment a
WHERE p.patient_id = a.patient_id
    AND a.appt_date > CURRENT_DATE
ORDER BY last_name DESC;

-- Q: List all employees not available on Wednesday.

SELECT s.employee_number, s.first_name, s.last_name, ea.weekly_available_days
FROM staff s, employee_availability ea
WHERE ea.employee_number = s.employee_number
MINUS
	(SELECT s.employee_number, s.first_name, s.last_name, ea.weekly_available_days
	FROM employee_availability ea, staff s
	WHERE ea.employee_number = s.employee_number
		AND ea.weekly_available_days LIKE '%WED%');