# redox — Extras

Ready-made theme files for external tools. Source or copy only the variant you need.

| Tool        | Files |
| ----------- | ----- |
| **tmux**    | [`tmux/redox.conf`](./tmux/redox.conf) · [`tmux/redox-light.conf`](./tmux/redox-light.conf) |
| **WezTerm** | [`wezterm/redox.lua`](./wezterm/redox.lua) — both schemes in one file |
| **fzf**     | [`fzf/redox.sh`](./fzf/redox.sh) · [`fzf/redox-light.sh`](./fzf/redox-light.sh) |
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
