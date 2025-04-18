#!/bin/bash

option1="ncmpcpp"
option2="Spotify"
option3="YouTube Music"

options="$option1\0icon\x1faudio-player\n$option2\0icon\x1fspotify\n$option3\0icon\x1fyoutube-music"

choice=$(echo -en "$options" | rofi -dmenu -i -p "Choose Music Player" -theme ~/.config/rofi/rofi-music-menu/musicmenu.rasi)

case $choice in
  $option1)
    kitty --title ncmpcpp bash -i -c 'ncmpcpp-extended'
  ;;
  $option2)
      spotify
  ;;
  $option3)
    youtube-music & disown
  ;;
esac

