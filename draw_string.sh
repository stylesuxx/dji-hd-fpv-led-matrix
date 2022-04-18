#!/system/bin/sh
draw="/blackbox/draw.sh"

show_usage() {
  echo "Usage: $0 STRING WAIT"
  echo "\nDraw a string on the LED matrix\n"
  echo "positional arguments:"
  echo "  STRING  a string of allowed symbols"
  echo "  WAIT    amount of seconds to wait between each char"
  exit
}

EXPECTED_ARGS=2
if [ $# -ne $EXPECTED_ARGS ]
then
	show_usage
	exit
fi

STRING=$1
WAIT=$2

while read -n 1 char
do
  $draw $char
  sleep $WAIT
done <<< "$STRING"

$draw CLEAR
