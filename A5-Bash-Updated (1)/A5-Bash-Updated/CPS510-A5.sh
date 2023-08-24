
# !/bin/bash

clear
printf "Enter user-name: "
read user
printf "Enter password: "
read -s pass

while [ true ]
do
	clear
	printf "\n"
	printf "/-------------<>[+]<>-------------\\"
	printf "\n\n"
	printf " Medical Database Interactive Tool "
	printf "\n\n"
	printf "  * Main Menu - Select an Option   "
	printf "\n\n"
	printf "\\---------------------------------/"
	printf "\n\n"
	printf "1) Display tables\n" 
	printf "2) Display views\n"
	printf "3) Query database\n"
	printf "4) Create test table\n"
	printf "5) Drop test table\n"
	printf "6) Insert to test table\n"
	printf "7) Display test table\n"
	printf "Q) Quit program\n"
	printf "\n"

	read -p "Select an option: " SELECTED

	case $SELECTED in
		1) bash display_menu.sh $user $pass;;
		2) bash view_menu.sh $user $pass;;
		3) bash query_menu.sh $user $pass;;
		4) bash t_create.sh $user $pass;;
		5) bash t_drop.sh $user $pass;;
		6) bash t_insert.sh $user $pass;;
		7) bash t_display.sh $user $pass;;
		q) exit 0;;
		Q) exit 0;;
		*) printf "Invalid selection... try again."
		   sleep 1;; 
	esac
done
