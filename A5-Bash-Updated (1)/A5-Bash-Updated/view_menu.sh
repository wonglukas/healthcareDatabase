
# !/bin/bash

while [ true ]
do
	clear
	printf "\n"
	printf "/-------------<>[+]<>-------------\\"
	printf "\n\n"
	printf " Medical Database Interactive Tool "
	printf "\n\n"
	printf "  * View Menu - Select a View      "
	printf "\n\n"
	printf "\\---------------------------------/"
	printf "\n\n"
	printf "1) All Appts.\n" 
	printf "2) Item Information\n"
	printf "3) Medical Staff Contact\n"
	printf "4) Non Medical Staff Contact\n"
	printf "5) Patient Contact\n"
	printf "6) Staff Availability\n"
	printf "7) Staff Supplies Usage\n"
	printf "8) Upcoming Appts.\n"
	printf "R) Return\n"
	printf "\n"

	read -p "Select an option: " SELECTED

	case $SELECTED in
		[1-8]) bash view.sh $SELECTED $1 $2;;
		r) exit 0 ;;
		R) exit 0 ;;
		*) printf "Invalid selection... try again."
		   sleep 1;; 
	esac
done
