#!/usr/bin/env bash

ABOVE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )"

source "${ABOVE_DIR}/helpers.sh"

if ask 'Kill all tmux sessions except the currently attached one?'; then
  tmux ls | grep -v 'attached' \
          | cut -d':' -f 1     \
          | xargs -I% tmux kill-session -t  %

  echo 'Done.'
else
  echo 'Aborting.'
fi

