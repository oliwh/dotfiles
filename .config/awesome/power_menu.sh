#!/bin/sh

DMENU="dmenu"

case "$(printf "poweroff\\nlock\\nreboot" | $DMENU )" in
    lock) i3lock ;;
    reboot) loginctl reboot ;;
    poweroff) loginctl poweroff ;;
esac
