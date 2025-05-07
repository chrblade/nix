layout=$(xkb-switch -p | awk -F'(' '{print $1}')

case $layout in
	us) echo "us" ;;
	ru) echo "ru" ;;
	*) echo "ru" ;;
esac
