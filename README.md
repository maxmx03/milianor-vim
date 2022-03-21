
# Milianor Vim

My neovim configuration for web and mobile development

## Changing Branch
The main brain is for linux users, for windows you need to change branch to nvim-windows
```powershell
git checkout nvim-windows
```

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

## Installation

### Dependencies

gcc
```
sudo apt install gcc
```

Node
```bash
sudo apt install nodejs
npm i -g neovim yarn
```

Python
```bash
sudo apt-get install python-dev python-pip python3-dev python3-pip
pip install pynvim
```

Rust/Cargo
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

### Neovim instalation

```bash
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
```

### Cloning repo

```bash
git clone https://github.com/maxmx03/milianor-vim.git ~/.config/nvim
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

## Installing the default formatters


lua formatter
```
cargo install stylua
```

prettier
```
npm install -g prettier
```

## Tools to work with neovim *(optional)*
 
- [Kitty](https://sw.kovidgoyal.net/kitty/)
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
| `<space>]` | `Move to next tab` | Bufferline |
| `<space>[` | `Move to previous tab` | Bufferline |
| `<space>x` | `Close the selected tab` | Bufferline |
| `<space>?` | `Close all the left tabs` | Bufferline |
| `<space>/` | `Close all the right tabs` | Bufferline |
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
| `<space>mr` | `Flutter Run` | Flutter |
| `<space>mR` | `Flutter Restart` | Flutter |
| `<space>mg` | `Flutter Quit` | Flutter |
| `<space>mv` | `Flutter Visual Debug` | Flutter |
| `<space>mo` | `Flutter Outline Toggle` | Flutter |


## License

[MIT](https://choosealicense.com/licenses/mit/)


## Authors

- [@maxm03](https://github.com/maxmx03)

<a href="https://www.buymeacoffee.com/milianor" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>

