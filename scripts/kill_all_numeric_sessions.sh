#!/usr/bin/env bash

ABOVE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )"

source "${ABOVE_DIR}/helpers.sh"

if ask 'Kill all tmux sessions with numeric names (except the currently attached one?'; then
  tmux ls | grep -v 'attached' \
          | cut -d':' -f 1     \
          | grep -P '\d+'      \
          | xargs -I% tmux kill-session -t  %

  echo 'Done.'
else
  echo 'Aborting.'
fi
