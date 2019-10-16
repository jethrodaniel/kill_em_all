# Kill Em All

![](https://img.shields.io/github/license/jethrodaniel/kill_em_all.svg)


> Kill em' all.
>
> -- <cite>Cliff Burton</cite>

A simple plugin to kill tmux sessions.

My usual workflow includes a few named tmux sessions, and my terminal shortcut
opens a tmux session, which I combine with [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect)
to persist my layout, settings, etc; however, this often generates unused sessions,
as `tmux-resurrect` doesn't kill the inital tmux window.

So this plugin kills those guys.

### Key bindings

- <kbd>prefix</kbd><kbd>@</kbd> - kill all sessions with numeric names
- <kbd>prefix</kbd><kbd>^</kbd> - kill all sessions except the current one

### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

    set -g @plugin 'jethrodaniel/kill_em_all'

Hit `prefix + I` to fetch the plugin and source it. That's it!

### Manual Installation

Clone the repo:

    `git clone https://github.com/jethrodaniel/kill_em_all ~/clone/path`

Add this line to the bottom of `.tmux.conf`:

    `run-shell ~/clone/path/kill_em_all.tmux`

Reload your TMUX environment with `tmux source-file ~/.tmux.conf`, and that's it.

### Requirements

- xargs
- grep
- bash

### License

[MIT](LICENSE)

