# TMUX Configuration

This is my tmux configurations. They are very simple and basic.

### tmux on startup

Add this to your .bashrc file:

```
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  tmux a -t default || exec tmux new -s default && exit;
fi
```

### Links you should check:

* [The Tao of tmux](https://leanpub.com/the-tao-of-tmux/read) - learn about tmux

* [Example of configuration](https://github.com/tony/tmux-config)

* [tmux color theme - "Solarize"](https://github.com/seebi/tmux-colors-solarized)
