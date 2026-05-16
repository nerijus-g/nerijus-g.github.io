#!/bin/bash
session='php'
PROJECT_ROOT='~/projects/nerijus-g.github.io'


tmux new-session -d -s $session

tmux rename-window -t 0 'git'
tmux send-keys -t 'git' "cd $PROJECT_ROOT" C-m

tmux new-window -t $session:1 -n 'scripts'
tmux send-keys -t 'scripts' "bash $PROJECT_ROOT/scripts/menu.sh $PROJECT_ROOT" C-m

tmux new-window -t $session:2 -n 'emacs'
tmux send-keys -t 'emacs' "cd $PROJECT_ROOT" C-m

tmux new-window -t $session:3 -n 'jekyll'
tmux send-keys -t 'php' "cd $PROJECT_ROOT" C-m

tmux attach -t $session:1
