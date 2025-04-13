music=$(playerctl metadata --format "{{title}}" 2>/dev/null)

max_length=20

if [ -z "$music" ]; then
    echo "No playing"
else
    if [ ${#music} -gt $max_length ]; then
        echo "${music:0:$max_length}..."
    else
        echo "$music"
    fi
fi
