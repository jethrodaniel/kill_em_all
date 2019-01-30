#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

tmux bind-key @ run-shell "$CURRENT_DIR/scripts/kill_all_numeric_sessions.sh"
tmux bind-key ^ run-shell "$CURRENT_DIR/scripts/kill_all_sessions_except_current.sh"

