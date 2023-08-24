
# !/bin/bash

while [ true ]
do
	clear
	printf "\n"
	printf "/-------------<>[+]<>-------------\\"
	printf "\n\n"
	printf " Medical Database Interactive Tool "
	printf "\n\n"
	printf "  * Query Menu - Select a Query    "
	printf "\n\n"
	printf "\\---------------------------------/"
	printf "\n\n"
	printf "1) List items and the amount of times they were used.\n" 
	printf "2) List how many staff members there are.\n"
	printf "3) List all staff that are not medical.\n"
	printf "4) List patients that aren't on medication and patients that have upcoming appts.\n"
	printf "5) List all employees that are not available on Wednesdays.\n"
	printf "R) Return\n"
	printf "\n"

	read -p "Select an option: " SELECTED

	case $SELECTED in
		[1-5]) bash query.sh $SELECTED $1 $2;;
		r) exit 0 ;;
		R) exit 0 ;;
		*) printf "Invalid selection... try again."
		   sleep 1;; 
	esac
done
