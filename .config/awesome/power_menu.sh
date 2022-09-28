#!/bin/sh

DMENU="dmenu"

case "$(printf "lock\\nsuspend\\nhibernate\\nreboot\\npoweroff" | $DMENU )" in
    lock) i3lock ;;
    suspend) loginctl suspend ;;
    hibernate) loginctl hibernate ;;
    reboot) loginctl reboot ;;
    poweroff) loginctl poweroff ;;
esac
