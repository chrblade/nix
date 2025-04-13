# Половина функций спизженно у
# https://github.com/adi1090x/widgets/blob/main/eww/dashboard/launch_dashboard
widget="$1"
FILE_MAIN="/home/chronoblade/.eww"
FILE_MENU="$FILE_MAIN/menu.file"
FILE_CAL="$FILE_MAIN/cal.file"
FILE_VOL="$FILE_MAIN/vol.file"

case $widget in
				menu)
					if [[ ! -f "$FILE_MENU" ]]; then
							touch $FILE_MENU
							eww open menu
						else
							eww close menu
							rm -r $FILE_MENU
						fi ;;
				cal)
					if [[ ! -f "$FILE_CAL" ]]; then
							touch $FILE_CAL
							eww open mycal
						else
							eww close mycal
							rm -r $FILE_CAL
						fi ;;
				volume)
					if [[ ! -f "$FILE_VOL" ]]; then
							touch $FILE_VOL
							eww open volumec
						else
							eww close volumec
							rm -r $FILE_VOL
						fi ;;
esac #ishak

