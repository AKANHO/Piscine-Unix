#!/bin/bash
echo === Ongoing ===

prime=0

while IFS=';' read -r id name description quest_type completion_state quest_giver start_date end_date reward; do

    if [[ $completion_state == 0 ]]; then

	echo "#"$id  $name
    fi
    prime=1

done < questbook_data.csv

echo === Completed ===

prime=0

while IFS=';' read -r id name description quest_type completion_state quest_giver start_date end_date reward; do

    if [[ $completion_state == 1 ]]; then

	echo "#"$id  $name
    fi
    prime=1

    done < questbook_data.csv


echo === Failed ===

prime=0

while IFS=';' read -r id name description quest_type completion_state quest_giver start_date end_date reward; do

    if [[ $completion_state == 2 ]]; then

	echo "#"$id  $name
    fi
    prime=1

    done < questbook_data.csv
