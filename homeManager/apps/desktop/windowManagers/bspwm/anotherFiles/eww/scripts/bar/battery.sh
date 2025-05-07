bat=$(cat /sys/class/power_supply/BAT0/capacity)

if [ $bat -ge 80 ]; then
    echo "󰁹"
elif [ $bat -ge 60 ]; then
    echo "󰁿"
elif [ $bat -ge 40 ]; then
    echo "󰁽"
elif [ $bat -ge 20 ]; then
    echo "󰁻"
else
    echo "󰁺"
fi
