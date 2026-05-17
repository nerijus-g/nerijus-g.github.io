#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Call script with project's root directory argument."
    exit 1
fi

PROJECT_ROOT="$1"

PS3="Select action: "
options=(
    "Docker compose up"
    "Emacs"
    "Jekyll bash"
    "Jekyll restart"
    "Docker compose down"
    "Quit"
)
while true; do
    select opt in "${options[@]}"
    do
	case $REPLY in
            1)
		cd $PROJECT_ROOT
		docker compose up -d
		break
		;;
            2)
		tmux send-keys -t 'emacs' "cd $PROJECT_ROOT && e" C-m
		tmux select-window -t "emacs"
		break
		;;
            3)
		tmux send-keys -t 'jekyll' "cd $PROJECT_ROOT && docker compose exec jekyll bash" C-m
		break
		;;
            4)
		cd $PROJECT_ROOT
		docker compose exec jekyll /restart.sh > /dev/null 2>&1 &
		break
		;;
            5)
		cd $PROJECT_ROOT
		docker compose down
		break
		;;
	    6)
		break 2
		;;
            *) echo "invalid option $REPLY";;
	esac
    done
done
