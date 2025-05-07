hour=$(date +%H)

if [ $hour -ge 5 ] && [ $hour -lt 12 ]; then
  echo "morning"
elif [ $hour -ge 12 ] && [ $hour -lt 18 ]; then
  echo "day"
else
  echo "night"
fi

