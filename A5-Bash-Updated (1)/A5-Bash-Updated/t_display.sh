
# !/bin/bash
# export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

clear

	sqlplus64 "$1/$2@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle12c.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl12c)))" <<xSQL
		SELECT *
		FROM testTable;
		exit;
xSQL

	read -s -p "Press Enter to continue..."
	