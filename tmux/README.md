# Yadr (Yet Another Dotfile Repo)

## Tmux Customizations

`tmux.conf` provides some sane defaults for tmux on Mac OS like a powerful status bar and vim keybindings.
You can customize the configuration in `~/.tmux.conf.user`.

## Splits navigation

 * `Ctrl-h,l,j,k` - to move left, right, down, up between splits. This also works between vim and tmux splits thanks to `vim-tmux-navigator`.

## Key bindings

Key binding prefix like screen `C-a` (more confortable than default `C-b`).

### Splits/Panes

#### Create

* `prefix s`, `prefix C-s` - horizontal split
* `prefix v`, `prefix C-v` - vertical split

#### Navigation

* `C-k` - select pane up
* `C-l` - select pane right
* `C-j` - select pane down
* `C-h` - select pane left

#### Resize

* `prefix K` - resize pane 5 lines up
* `prefix L` - resize pane 5 columns right
* `prefix J` - resize pane 5 lines down
* `prefix H` - resize pane 5 columns left

### Windows

#### Create

* `previx c` - new window

#### Navigation

* `prefix n` - select next window
* `prefix p` - select previous window
* `prefix a` - select last window

### Pane input sync

* `prefix e` - enable duplication input to any pane to all other panes (synchronize-panes)
* `prefix E` - disable duplication input to any pane to all other panes (synchronize-panes)

### Reload configuration

* `prefix C-r`

### Redraw screen

* `prefix r`

### Mouse

* `prefix m` - enable mouse
* `prefix M` - disable mouse
