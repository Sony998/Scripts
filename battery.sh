#!/bin/bash

icon_codemenos50="\uf243"
icon_codemas50="\uf240" 
icon_cargando="\udb80\udc85"
battery_info=$(acpi -b)
battery_percentage=$(echo $battery_info | grep -P -o '[0-9]+(?=%)')
battery_status=$(echo $battery_info | grep -o 'Charging\|Discharging\|Full\|Unknown')

if [[ ${battery_status} == "Charging" ]]; then
    echo -e "$icon_cargando $battery_percentage%"
elif [[ ${battery_percentage} -lt 50 ]]; then
    echo -e "$icon_codemenos50 $battery_percentage%"
else
    echo -e "$icon_codemas50 $battery_percentage%"
fi