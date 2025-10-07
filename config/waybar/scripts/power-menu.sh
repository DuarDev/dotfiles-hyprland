#!/bin/bash

chosen=$(echo -e " Desligar\n Reiniciar\n Bloquear\n󰜉 Sair" | rofi -dmenu -i -p "Power Menu")

case "$chosen" in
  " Desligar") systemctl poweroff ;;
  " Reiniciar") systemctl reboot ;;
  " Bloquear") hyprctl dispatch dpms off ;; # ou seu script de lock
  "󰜉 Sair") hyprctl dispatch exit ;;
esac
