#!/system/bin/sh

# Mapping
# 1,5  0,0 - 0,1 - 0,2
# 1,5  1,3         0,3
# 1,5  1,2 - 1,4 - 0,4
# 1,5  1,1         0,5
# 1,5  1,0 - 0,7 - 0,6

EXPECTED_ARGS=1

show_usage() {
	echo "Usage: $0 SYMBOL"
	echo "\nDraw a symbol on the LED matrix\n"
	echo "positional arguments:"
	echo "  SYMBOL  0-19, A, B, C, D, E, F, H, I, J, K, L, O, P, R, S, T, U, Z, CLEAR"
	exit
}

switch_led() {
	IO=$1
	STATE=$2

	echo $STATE > "/sys/class/expand-gpio/IO${IO}/direction"
}

switch_port() {
	PORT=$1
	IO=$2
	STATE=$3

	set -- $IO
	while [ -n "$1" ]
	do
		switch_led "${PORT}_${1}" $STATE
		shift
	done
}

clear() {
	PORT0="0 1 2 3 4 5 6 7"
	PORT1="0 1 2 3 4"

	switch_led "1_5" low
	switch_port 0 "${PORT0}" low
	switch_port 1 "${PORT1}" low
}

draw_0() {
	PORT0="0 1 2 3 4 5 6 7"
	PORT1="0 1 2 3"

	switch_port 0 "${PORT0}" high
	switch_port 1 "${PORT1}" high
}

draw_1() {
	PORT0="2 3 4 5 6"
	PORT1=""

	switch_port 0 "${PORT0}" high
	switch_port 1 "${PORT1}" high
}

draw_2() {
	PORT0="0 1 2 3 4 6 7"
	PORT1="0 1 2 4"

	switch_port 0 "${PORT0}" high
	switch_port 1 "${PORT1}" high
}

draw_3() {
	PORT0="0 1 2 3 4 5 6 7"
	PORT1="0 4"

	switch_port 0 "${PORT0}" high
	switch_port 1 "${PORT1}" high
}

draw_4() {
	PORT0="0 2 3 4 5 6"
	PORT1="2 3 4"

	switch_port 0 "${PORT0}" high
	switch_port 1 "${PORT1}" high
}

draw_5() {
	PORT0="0 1 2 4 5 6 7"
	PORT1="0 2 3 4"

	switch_port 0 "${PORT0}" high
	switch_port 1 "${PORT1}" high
}

draw_6() {
	PORT0="0 1 2 4 5 6 7"
	PORT1="0 1 2 3 4"

	switch_port 0 "${PORT0}" high
	switch_port 1 "${PORT1}" high
}

draw_7() {
	PORT0="0 1 2 3 4 5 6"
	PORT1=""

	switch_port 0 "${PORT0}" high
	switch_port 1 "${PORT1}" high
}

draw_8() {
	PORT0="0 1 2 3 4 5 6 7"
	PORT1="0 1 2 3 4"

	switch_port 0 "${PORT0}" high
	switch_port 1 "${PORT1}" high
}

draw_9() {
	PORT0="0 1 2 3 4 5 6 7"
	PORT1="0 2 3 4"

	switch_port 0 "${PORT0}" high
	switch_port 1 "${PORT1}" high
}

draw_10() {
	switch_led "1_5" high
	draw_0
}

draw_11() {
	switch_led "1_5" high
	draw_1
}

draw_12() {
	switch_led "1_5" high
	draw_2
}

draw_13() {
	switch_led "1_5" high
	draw_3
}

draw_14() {
	switch_led "1_5" high
	draw_4
}

draw_15() {
	switch_led "1_5" high
	draw_5
}

draw_16() {
	switch_led "1_5" high
	draw_6
}

draw_17() {
	switch_led "1_5" high
	draw_7
}

draw_18() {
	switch_led "1_5" high
	draw_8
}

draw_19() {
	switch_led "1_5" high
	draw_9
}

draw_A() {
	PORT0="1 3 4 5 6"
	PORT1="0 1 2 3 4"

	switch_port 0 "${PORT0}" high
	switch_port 1 "${PORT1}" high
}

draw_B() {
	PORT0="0 1 3 5 7"
	PORT1="0 1 2 3 4"

	switch_port 0 "${PORT0}" high
	switch_port 1 "${PORT1}" high
}

draw_C() {
	PORT0="0 1 2 6 7"
	PORT1="0 1 2 3"

	switch_port 0 "${PORT0}" high
	switch_port 1 "${PORT1}" high
}

draw_D() {
	PORT0="0 1 3 4 5 7"
	PORT1="0 1 2 3"

	switch_port 0 "${PORT0}" high
	switch_port 1 "${PORT1}" high
}

draw_E() {
	PORT0="0 1 2 6 7"
	PORT1="0 1 2 3 4"

	switch_port 0 "${PORT0}" high
	switch_port 1 "${PORT1}" high
}

draw_F() {
	PORT0="0 1 2"
	PORT1="0 1 2 3 4"

	switch_port 0 "${PORT0}" high
	switch_port 1 "${PORT1}" high
}

draw_H() {
	PORT0="0 2 3 4 5 6"
	PORT1="0 1 2 3 4"

	switch_port 0 "${PORT0}" high
	switch_port 1 "${PORT1}" high
}

draw_I() {
	draw_1
}

draw_J() {
	PORT0="2 3 4 5 7"
	PORT1="1"

	switch_port 0 "${PORT0}" high
	switch_port 1 "${PORT1}" high
}

draw_K() {
	PORT0="0 2 3 5 6"
	PORT1="0 1 2 3 4"

	switch_port 0 "${PORT0}" high
	switch_port 1 "${PORT1}" high
}

draw_L() {
	PORT0="0 6 7"
	PORT1="0 1 2 3"

	switch_port 0 "${PORT0}" high
	switch_port 1 "${PORT1}" high
}

draw_O() {
	PORT0="1 3 4 5 7"
	PORT1="1 2 3"

	switch_port 0 "${PORT0}" high
	switch_port 1 "${PORT1}" high
}

draw_P() {
	PORT0="0 1 3"
	PORT1="0 1 2 3 4"

	switch_port 0 "${PORT0}" high
	switch_port 1 "${PORT1}" high
}

draw_R() {
	PORT0="0 1 3 5 6"
	PORT1="0 1 2 3 4"

	switch_port 0 "${PORT0}" high
	switch_port 1 "${PORT1}" high
}

draw_S() {
	PORT0="1 2 5 7"
	PORT1="0 3 4"

	switch_port 0 "${PORT0}" high
	switch_port 1 "${PORT1}" high
}

draw_U() {
	PORT0="0 2 3 4 5 6 7"
	PORT1="0 1 2 3"

	switch_port 0 "${PORT0}" high
	switch_port 1 "${PORT1}" high
}

draw_Z() {
	PORT0="0 1 2 3 6 7"
	PORT1="0 1 4"

	switch_port 0 "${PORT0}" high
	switch_port 1 "${PORT1}" high
}

if [ $# -ne $EXPECTED_ARGS ]
then
	show_usage
	exit
fi

SYMBOL=$1

if [ "$SYMBOL" = "CLEAR" ]
then
	clear
	exit
fi

if [ $(echo $SYMBOL | grep -E "[0-9ABCDEFHIJKLOPRSTUZ]") ]
then
	FUNC="draw_$SYMBOL"
	clear
	$FUNC
else
	show_usage
fi
