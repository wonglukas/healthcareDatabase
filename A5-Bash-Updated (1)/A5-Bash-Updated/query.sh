
# !/bin/bash
# export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

clear

if [ $1 == 1 ]
then
  sqlplus64 "$2/$3@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle12c.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl12c)))" <<xSQL
		SELECT i.item_id, s.item, (SUM(i.num_recieved) - s.quantity)
		FROM supplies s, shipment_info i
		WHERE i.item_id = s.item_id
		GROUP BY i.item_id, s.item, s.quantity
		ORDER BY (SUM(i.num_recieved) - s.quantity) DESC;

		exit;
xSQL

elif [ $1 == 2 ]
then
  sqlplus64 "$2/$3@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle12c.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl12c)))" <<xSQL
    SELECT COUNT(employee_number)
    FROM staff;
    
		exit;
xSQL

elif [ $1 == 3 ]
then
  sqlplus64 "$2/$3@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle12c.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl12c)))" <<xSQL
  SELECT DISTINCT s.first_name, s.last_name, s.employee_number, s.department
    FROM staff s
    WHERE NOT EXISTS
    	(SELECT employee_number
    	FROM medical_staff ms
     	WHERE ms.employee_number = s.employee_number);
    
		exit;
xSQL

elif [ $1 == 4 ]
then
  sqlplus64 "$2/$3@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle12c.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl12c)))" <<xSQL
    SELECT p.patient_id, first_name, last_name
    FROM patients p, patient_medical_info pm
    WHERE p.patient_id = pm.patient_id
      AND pm.current_med = 'none'
    UNION
    SELECT p.patient_id, first_name, last_name
    FROM patients p, appointment a
    WHERE p.patient_id = a.patient_id
      AND a.appt_date > CURRENT_DATE
    ORDER BY last_name DESC;
    
		exit;
xSQL

elif [ $1 == 5 ]
then
  sqlplus64 "$2/$3@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle12c.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl12c)))" <<xSQL
    SELECT s.employee_number, s.first_name, s.last_name, ea.weekly_available_days
    FROM staff s, employee_availability ea
    WHERE ea.employee_number = s.employee_number
    MINUS
    	(SELECT s.employee_number, s.first_name, s.last_name, ea.weekly_available_days
    	FROM employee_availability ea, staff s
    	WHERE ea.employee_number = s.employee_number
    		AND ea.weekly_available_days LIKE '%WED%');
    
		exit;
xSQL

fi

	read -s -p "Press Enter to continue..."
	