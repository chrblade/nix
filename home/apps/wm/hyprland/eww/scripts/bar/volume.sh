vol=$(pamixer --get-volume)

if [ $vol -eq 0 ]; then
    echo ""
elif [ $vol -le 33 ]; then
    echo ""
elif [ $vol -le 66 ]; then
    echo ""
else
    echo ""
fi

