
# !/bin/bash

while [ true ]
do
	clear
	printf "\n"
	printf "/-------------<>[+]<>-------------\\"
	printf "\n\n"
	printf " Medical Database Interactive Tool "
	printf "\n\n"
	printf "  * Display Menu - Select a Table  "
	printf "\n\n"
	printf "\\---------------------------------/"
	printf "\n\n"
	printf " 1) Appointment\n" 
	printf " 2) Employee Availability\n"
	printf " 3) Medical Staff\n"
	printf " 4) Patient Medical Info.\n"
	printf " 5) Patients\n"
	printf " 6) Shipment Info.\n"
	printf " 7) Staff\n"
	printf " 8) Staff Manages Appointment\n"
	printf " 9) Staff Manages Supplies\n"
	printf "10) Suppliers\n"
	printf "11) Supplies\n"
	printf " R) Return\n"
	printf "\n"

	read -p "Select an option: " SELECTED

	case $SELECTED in
		[1-9]) bash display.sh $SELECTED $1 $2;;
		10) bash display.sh $SELECTED $1 $2;;
		11) bash display.sh $SELECTED $1 $2;;
		r) exit 0 ;;
		R) exit 0 ;;
		*) printf "Invalid selection... try again."
		   sleep 1;; 
	esac
done
