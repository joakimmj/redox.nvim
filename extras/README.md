# redox — Extras

Ready-made theme files for external tools. Source or copy only the variant you need.

| Tool        | Files |
| ----------- | ----- |
| **tmux**    | [`tmux/redox.conf`](./tmux/redox.conf) · [`tmux/redox-light.conf`](./tmux/redox-light.conf) |
| **WezTerm** | [`wezterm/redox.lua`](./wezterm/redox.lua) — both schemes in one file |
| **fzf**     | [`fzf/redox.sh`](./fzf/redox.sh) · [`fzf/redox-light.sh`](./fzf/redox-light.sh) |
| **ls**      | [`ls/redox.sh`](./ls/redox.sh) · [`ls/redox-light.sh`](./ls/redox-light.sh) — `LS_COLORS` |
| **less/man**| [`less/redox.sh`](./less/redox.sh) · [`less/redox-light.sh`](./less/redox-light.sh) — `LESS_TERMCAP` |
| **bat**     | [`bat/redox.tmTheme`](./bat/redox.tmTheme) · [`bat/redox-light.tmTheme`](./bat/redox-light.tmTheme) — also works for `delta` |
| **Rofi**    | [`rofi/redox.rasi`](./rofi/redox.rasi) · [`rofi/redox-light.rasi`](./rofi/redox-light.rasi) |
| **Yazi**    | [`yazi/redox.toml`](./yazi/redox.toml) · [`yazi/redox-light.toml`](./yazi/redox-light.toml) |
| **Vim**     | [`vim/redox.vim`](./vim/redox.vim) · [`vim/redox-light.vim`](./vim/redox-light.vim) |
| **CSS**     | [`css/redox.css`](./css/redox.css) · [`css/redox-light.css`](./css/redox-light.css) · [`css/redox-theme.css`](./css/redox-theme.css) (combined) |

## tmux

```sh
# In tmux.conf:
source-file ~/.config/tmux/themes/redox.conf   # dark
# or
source-file ~/.config/tmux/themes/redox-light.conf
```

## WezTerm

Paste the contents of `wezterm/redox.lua` into your `wezterm.lua` config block
(it expects a local `config` variable from `config_builder`), then set:

```lua
config.color_scheme = "redox"        -- dark
config.color_scheme = "redox-light"  -- light
```

## fzf

```sh
# In ~/.bashrc / ~/.zshrc:
source /path/to/extras/fzf/redox.sh        # dark
# or
source /path/to/extras/fzf/redox-light.sh  # light
```

## ls (LS_COLORS)

Colors `ls`/`eza`/etc. output by file type (dirs, symlinks, executables,
archives, images, audio, docs) in 24-bit truecolor.

```sh
# In ~/.bashrc / ~/.zshrc:
source /path/to/extras/ls/redox.sh        # dark
# or
source /path/to/extras/ls/redox-light.sh  # light
```

Ensure `ls` actually emits color: `alias ls='ls --color=auto'`.

## less / man (LESS_TERMCAP)

Colors `less` and `man` pages (bold headings, underlined args, standout/search)
in 24-bit truecolor. Sets `GROFF_NO_SGR=1` so groff emits overstrike that `less`
recolors via `LESS_TERMCAP` — without it groff writes its own ANSI and the theme
is ignored.

```sh
# In ~/.bashrc / ~/.zshrc:
source /path/to/extras/less/redox.sh        # dark
# or
source /path/to/extras/less/redox-light.sh  # light
```

## bat

`bat` uses Sublime `.tmTheme` files.

Install both variants into bat's theme dir, then rebuild its cache:

```sh
mkdir -p "$(bat --config-dir)/themes"
cp extras/bat/redox.tmTheme extras/bat/redox-light.tmTheme "$(bat --config-dir)/themes/"
bat cache --build
```

Select the theme:

```sh
bat --theme=redox        file.rs   # dark
bat --theme=redox-light  file.rs   # light
# persist in ~/.config/bat/config:
echo '--theme="redox"' >> "$(bat --config-dir)/config"
# or via env:
export BAT_THEME=redox
```

The same `.tmTheme` also works for [`delta`](https://github.com/dandavison/delta)
(`--syntax-theme=redox`) and anything else built on `syntect`.

## Rofi

```sh
rofi -show drun -theme /path/to/extras/rofi/redox.rasi        # dark
# or
rofi -show drun -theme /path/to/extras/rofi/redox-light.rasi  # light
```

## Yazi

Copy the desired TOML file to `~/.config/yazi/theme.toml`, or place it under
`~/.config/yazi/flavors/` if using the flavors system.

## Vim

```sh
cp extras/vim/redox.vim       ~/.vim/colors/redox.vim
cp extras/vim/redox-light.vim ~/.vim/colors/redox-light.vim
```

Then in your `.vimrc`:

```vim
colorscheme redox        " dark
" or
colorscheme redox-light  " light
```

## CSS

The CSS files expose the full palette as [CSS custom properties](https://developer.mozilla.org/en-US/docs/Web/CSS/Using_CSS_custom_properties) on `:root`.

**Option A — single theme:**

```html
<link rel="stylesheet" href="redox.css">        <!-- dark -->
<!-- or -->
<link rel="stylesheet" href="redox-light.css">  <!-- light -->
```

**Option B — combined with auto/manual switching (`redox-theme.css`):**

Defaults to dark, automatically switches on OS preference (`prefers-color-scheme`), and respects a manual override via `data-theme` on `<html>`.

```html
<link rel="stylesheet" href="redox-theme.css">
```

```js
// Manual toggle
document.documentElement.dataset.theme = "light"; // or "dark"
localStorage.setItem("redox-theme", document.documentElement.dataset.theme);
```

Add this **before `</head>`** (no `defer`) to restore the saved preference without a flash:

```html
<script>
  const t = localStorage.getItem("redox-theme");
  if (t) document.documentElement.dataset.theme = t;
</script>
```

**Example usage:**

```css
body {
  background-color: var(--redox-bg);
  color:            var(--redox-fg);
}

a        { color: var(--redox-teal); }
a:hover  { color: var(--redox-cyan); }
code     { color: var(--redox-sea);  background: var(--redox-surface); }
mark     { color: var(--redox-bg);   background: var(--redox-amber);   }
```

Available properties follow the naming convention `--redox-<token>`, matching
the Lua palette token names (e.g. `bg`, `fg`, `muted`, `subtle`, `orange`,
`teal`, `diff-add`, etc.).
