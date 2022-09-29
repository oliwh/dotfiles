#!/bin/sh

DMENU="dmenu"

case "$(printf "poweroff\\nlock\\nsuspend\\nhibernate\\nreboot" | $DMENU )" in
    lock) i3lock ;;
    suspend) loginctl suspend ;;
    hibernate) loginctl hibernate ;;
    reboot) loginctl reboot ;;
    poweroff) loginctl poweroff ;;
esac
