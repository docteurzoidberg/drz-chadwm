#!/bin/dash

# ^c$var^ = fg color
# ^b$var^ = bg color

interval=0

# load colors
#. ~/.local/drzdwm/bar_themes/onedark

black=#1E1D2D
green=#b8bb26
white=#D9E0EE
grey=#282737
yellow=#fabd2f
blue=#83a598
red=#F28FAD
darkblue=#458588
darkyellow=#d79921
darkred=#F28FAD
darkgreen=#98971a

cpu() {
  cpu_val=$(grep -o "^[^ ]*" /proc/loadavg)

  printf "^b$red^ ^c$black^  "
  printf "^c$red^^b$black^ $cpu_val"
}

battery() {
  get_capacity="$(cat /sys/class/power_supply/axp20x-battery/capacity)"
  printf "^c$black^ ^b$darkyellow^  ^c$black^^b$yellow^ $get_capacity"
}

mem() {
  printf "^b$blue^^c$black^  "
  printf "^c$blue^^b$black^ $(free -h | awk '/^Mem/ { print $3 }' | sed s/i//g)"
}

wlan() {
	case "$(cat /sys/class/net/wl*/operstate 2>/dev/null)" in
	up) printf "^c$black^ ^b$darkgreen^ 󰤨 ^b$black^ " ;;
	down) printf "^c$black^ ^b$darkred^ 󰤭 ^b$black^ " ;;
	esac
}

clock() {
	printf "^c$black^ ^b$darkblue^ 󱑆 "
	printf "^c$black^^b$blue^ $(date '+%H:%M')  "
}

while true; do

  [ $interval = 0 ] || [ $(($interval % 3600)) = 0 ]
  interval=$((interval + 1))

  sleep 1 && xsetroot -name " $(cpu) $(mem) $(wlan) $(battery) $(clock)"
done
