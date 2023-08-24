
# !/bin/bash
# export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

clear

if [ $1 == 1 ]
then
  sqlplus64 "$2/$3@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle12c.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl12c)))" <<xSQL
    SELECT *
    FROM all_appts;

		exit;
xSQL

elif [ $1 == 2 ]
then
  sqlplus64 "$2/$3@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle12c.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl12c)))" <<xSQL
    SELECT *
    FROM item_information;
    
		exit;
xSQL

elif [ $1 == 3 ]
then
  sqlplus64 "$2/$3@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle12c.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl12c)))" <<xSQL
    SELECT *
    FROM medical_staff_contact;
    
		exit;
xSQL

elif [ $1 == 4 ]
then
  sqlplus64 "$2/$3@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle12c.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl12c)))" <<xSQL
    SELECT *
    FROM non_medical_staff_contact;
    
		exit;
xSQL

elif [ $1 == 5 ]
then
  sqlplus64 "$2/$3@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle12c.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl12c)))" <<xSQL
    SELECT *
    FROM patient_contact;
    
		exit;
xSQL

elif [ $1 == 6 ]
then
  sqlplus64 "$2/$3@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle12c.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl12c)))" <<xSQL
    SELECT *
    FROM staff_availability;
    
		exit;
xSQL

elif [ $1 == 7 ]
then
  sqlplus64 "$2/$3@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle12c.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl12c)))" <<xSQL
    SELECT *
    FROM staff_supplies_usage;
    
		exit;
xSQL

elif [ $1 == 8 ]
then
  sqlplus64 "$2/$3@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle12c.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl12c)))" <<xSQL
    SELECT *
    FROM upcoming_appts;
    
		exit;
xSQL

fi

	read -s -p "Press Enter to continue..."
	