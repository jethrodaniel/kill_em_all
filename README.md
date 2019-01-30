# Kill Em All

A simple plugin to kill tmux sessions.

### Key bindings

- <kbd>prefix</kbd><kbd>@</kbd> - kill all sessions with numeric names
- <kbd>prefix</kbd><kbd>^</kbd> - kill all sessions except the current one

### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

    set -g @plugin 'jethrodaniel/kill_em_all'

Hit `prefix + I` to fetch the plugin and source it. That's it!

### Manual Installation

Clone the repo:

    $ git clone https://github.com/jethrodaniel/kill_em_all ~/clone/path

Add this line to the bottom of `.tmux.conf`:

    run-shell ~/clone/path/kill_em_all.tmux

Reload TMUX environment with `$ tmux source-file ~/.tmux.conf`, and that's it.

### Requirements

- xargs
- grep
- bash
- tput

### License

[MIT](LICENSE.md)

