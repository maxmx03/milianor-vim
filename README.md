
# Milianor Vim

My neovim configuration for web and mobile development

## Formatters
- [prettier](https://prettier.io/)
- [yapf](https://github.com/google/yapf)
- [stylua](https://github.com/JohnnyMorganz/StyLua)
- [rustmt](https://github.com/rust-lang/rustfmt)
- and more...

## Themes
- [onedark](https://github.com/navarasu/onedark.nvim) (default)
- [tokyonight](https://github.com/folke/tokyonight.nvim)
- [vscode](https://github.com/Mofiqul/vscode.nvim)

## Instalation

### Linux
1. Install [Neovim](https://neovim.io/)


2. install gcc

```bash
sudo apt install gcc
```

## Windows
1. install [scoop](https://scoop.sh/)

2. install [dotnet](https://dotnet.microsoft.com/en-us/download)

```powershell
iwr -useb get.scoop.sh | iex
```

2. install neovim/mingw/nvm

```powershell
scoop bucket add versions
scoop install neovim-nightly mingw nvm
```

## Windows and Linux

then install
```bash
npm i -g neovim
pip install pynvim
```

check if is anything is mission, for example telescope needs some dependencies to be installed
```bash
nvim
:checkhealth
```

Lsp Servers are installed automatically.

Example, to install tsserver you just need to open a javascript file
```bash
  nvim index.js
```


## Tools to work with neovim *(optional)*
 
- [Alacritty](https://github.com/alacritty/alacritty)
- [Fish](https://fishshell.com/)
- [Tmux](https://github.com/tmux/tmux)


## Key mappings


| nnoremap   | description       | plugin                           |
| :---------- | :--------- | :---------------------------------- |
| `<space>` | `Open a list of available keymappings` | Which keys |
| `<space>d` | `Open Dashboard` | Dashboard |
| `<space>s` | `Save Session` | Dashboard |
| `<space>l` | `Load Session` | Dashboard |
| `<space>ll` | `Show Installed and available lsp servers` | Dashboard |
| `<space>b]` | `Move to next tab` | Bufferline |
| `<space>b[` | `Move to previous tab` | Bufferline |
| `<space>bx` | `Close the selected tab` | Bufferline |
| `<space>bl` | `Close all the left tabs` | Bufferline |
| `<space>br` | `Close all the right tabs` | Bufferline |
| `<space>ff` | `Lists files in your current working directory` | Telescope |
| `<space>fg` | `Search for a string in your current working directory` | Telescope |
| `<space>fb` | `Lists open buffers in current neovim instance` | Telescope |
| `<space>fh` | `Lists available help tags` | Telescope |
| `<space>nn` | `Open tree (sidebar)` | Tree |
| `<space>tt` | `Open terminal (press Esc and repeat the command to close the terminal)` | Terminal |
| `<space>ga` | `Code action` | Lsp Saga |
| `<space>gr` | `Rename` | Lsp Saga |
| `<space>gk` | `Show diagnostic` | Lsp Saga |
| `<space>gK` | `Hover` | Lsp Saga |
| `<space>gn` | `Show next diagnostic` | Lsp Saga |
| `<space>gp` | `Show prev diagnostic` | Lsp Saga |
| `<space>gd` | `Preview definition` | Lsp Saga |
| `<space>hs` | `Stage hunk` | Gitsigns |
| `<space>hr` | `Reset hunk` | Gitsigns |
| `<space>hp` | `Preview hunk` | Gitsigns |
| `<space>hd` | `Toggle local diff` | Gitsigns |
| `<space>hD` | `Open project diffview` | DiffView |
| `<space>hc` | `Close project diffview` | DiffView |
| `<space>hb` | `Toggle blame` | DiffView |
| `<space>c` | `Comment Toggle` | CommentToggle |


## License

[MIT](https://choosealicense.com/licenses/mit/)


## Authors

- [@maxm03](https://github.com/maxmx03)

<a href="https://www.buymeacoffee.com/milianor" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>

