
# !/bin/bash
# export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

clear

if [ $1 == 1 ]
then
  sqlplus64 "$2/$3@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle12c.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl12c)))" <<xSQL
		SELECT *
		FROM appointment;

		exit;
xSQL

elif [ $1 == 2 ]
then
  sqlplus64 "$2/$3@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle12c.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl12c)))" <<xSQL
		SELECT *
		FROM employee_availability;
    
		exit;
xSQL

elif [ $1 == 3 ]
then
  sqlplus64 "$2/$3@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle12c.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl12c)))" <<xSQL
		SELECT *
		FROM medical_staff;
    
		exit;
xSQL

elif [ $1 == 4 ]
then
  sqlplus64 "$2/$3@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle12c.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl12c)))" <<xSQL
		SELECT *
		FROM patient_medical_info;
    
		exit;
xSQL

elif [ $1 == 5 ]
then
  sqlplus64 "$2/$3@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle12c.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl12c)))" <<xSQL
		SELECT *
		FROM patients;
    
		exit;
xSQL

elif [ $1 == 6 ]
then
  sqlplus64 "$2/$3@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle12c.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl12c)))" <<xSQL
		SELECT *
		FROM shipment_info;
    
		exit;
xSQL

elif [ $1 == 7 ]
then
  sqlplus64 "$2/$3@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle12c.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl12c)))" <<xSQL
		SELECT *
		FROM staff;
    
		exit;
xSQL

elif [ $1 == 8 ]
then
  sqlplus64 "$2/$3@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle12c.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl12c)))" <<xSQL
		SELECT *
		FROM staff_manages_appointments;
    
		exit;
xSQL

elif [ $1 == 9 ]
then
  sqlplus64 "$2/$3@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle12c.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl12c)))" <<xSQL
		SELECT *
		FROM staff_manages_supplies;
    
		exit;
xSQL

elif [ $1 == 10 ]
then
  sqlplus64 "$2/$3@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle12c.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl12c)))" <<xSQL
		SELECT *
		FROM suppliers;
    
		exit;
xSQL

elif [ $1 == 11 ]
then
  sqlplus64 "$2/$3@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle12c.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl12c)))" <<xSQL
		SELECT *
		FROM supplies;
    
		exit;
xSQL

fi

	read -s -p "Press Enter to continue..."
	