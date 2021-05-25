# tmux Shortcuts and Commands

Here I'll be putting some tmux commands that are useful to remember. Also, some shortcuts. <br />
I use **Ctrl+a** as the bind-key.

### Useful Commands

* **tmux kill-server** kills the server (and every session)

* **tmux ls** lists opened sessions and windows

* **tmux a** attach

* **tmux a -t "myname"** attach to session 'myname'

* **tmux kill-session -t "myname"** kill session 'myname'

* **tmux new-session -d** create a new session within a session

* **tmux switch-client -t "myname"** switch to session 'myname'

* **tmux new-session -d -s "test" && tmux switch-client -t "test"** creates a new session named 'test' and switches to it

### Shortcuts (using bind-key)

* windows:
  - **c** creates new window
  - **w** full view of sessions and windows
  - **f** find window
  - **n** next window
  - **p** previous window
  - **&** kill window
<br />
<br />
* **x** kills a pane

* **\<num>** goes to window \<num>

* **(** and **)** switch sessions

* **d** detach

* **?** list shortcuts

>#### Copy Mode
Pressing **bind-key + [** places us in Copy mode. We can then use our movement keys to move our cursor around the screen.
```
   Function                vi             emacs
   Back to indentation     ^              M-m
   Clear selection         Escape         C-g
   Copy selection          Enter          M-w
   Cursor down             j              Down
   Cursor left             h              Left
   Cursor right            l              Right
   Cursor to bottom line   L
   Cursor to middle line   M              M-r
   Cursor to top line      H              M-R
   Cursor up               k              Up
   Delete entire line      d              C-u
   Delete to end of line   D              C-k
   End of line             $              C-e
   Goto line               :              g
   Half page down          C-d            M-Down
   Half page up            C-u            M-Up
   Next page               C-f            Page down
   Next word               w              M-f
   Paste buffer            p              C-y
   Previous page           C-b            Page up
   Previous word           b              M-b
   Quit mode               q              Escape
   Scroll down             C-Down or J    C-Down
   Scroll up               C-Up or K      C-Up
   Search again            n              n
   Search backward         ?              C-r
   Search forward          /              C-s
   Start of line           0              C-a
   Start selection         Space          C-Space
   Transpose chars                        C-t
```

* Personal changes:
  - **v** begin-selection
  - **y** copy pipe and cancel
<br />
<br />
>#### Personal Shortcuts

* **Shift+c** create new window and name it

* **v** create new pane and splits in vertical

* **b** create new pane and splits in horizontal

* **r** reloads config

* pane change:
  - **^** last window
  - **h** left
  - **j** down
  - **k** up
  - **l** right
<br />
<br />
* folder cd binding:
  - **Shift+w** windows folder
  - **Shift+b** backup folder
