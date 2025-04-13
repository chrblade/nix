#printf "%.0f\n" $( LC_NUMERIC=C free -m | grep Mem | awk '{print ($3/$2)*100}')
printf "%.0f\n" $(LC_NUMERIC=C free -m | awk 'NR==2 {printf "%.0f", ($3/$2)*100}')
