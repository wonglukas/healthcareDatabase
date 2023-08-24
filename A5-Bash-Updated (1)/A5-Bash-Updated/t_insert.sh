
# !/bin/bash
# export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

clear

	sqlplus64 "$1/$2@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle12c.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl12c)))" <<xSQL
		INSERT INTO testTable (test_id, test_name, test_age, test_height) values
			(1000, 'Andy', 20, 180);
		INSERT INTO testTable (test_id, test_name, test_age, test_height) values
			(1234, 'Test', 123, 43);
		INSERT INTO testTable (test_id, test_name, test_age, test_height) values
			(1337, 'Yumyum', 69, 420);
		INSERT INTO testTable (test_id, test_name, test_age, test_height) values
			(2525, 'UnnecessarilyBigName', 13, 60);
		exit;
xSQL

	read -s -p "Press Enter to continue..."
	