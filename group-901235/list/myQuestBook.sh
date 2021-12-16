#!/bin/bash

prime=0

while IFS=';' read -r id name description quest_type completion_state quest_giver start_date end_date reward; do

    if [[ $prime -ne 0 ]]; then

	  echo "#"$id $( echo $name |cut -d';' -f2)
    fi
	prime=1
   
    
    
done < questbook_data.csv
