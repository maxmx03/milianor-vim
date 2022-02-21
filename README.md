
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

1. Install [Neovim](https://neovim.io/)

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

Servers are installed automatically, if you want to add more servers you need to add your server in the servers table in the init.lua file

## Tools to work with neovim *(optional)*
 
- [Alacritty](https://github.com/alacritty/alacritty)
- [Fish](https://fishshell.com/)
- [Tmux](https://github.com/tmux/tmux)


## Key mappings


| nnoremap   | description       | plugin                           |
| :---------- | :--------- | :---------------------------------- |
| `<space>` | `Open a list of available keymappings` | Which keys |
| `<space>b]` | `Move to next tab` | Bufferline |
| `<space>b[` | `Move to previous tab` | Bufferline |
| `<space>bx` | `Close the selected tab` | Bufferline |
| `<space>bl` | `Close all the left tabs` | Bufferline |
| `<space>br` | `Close all the right tabs` | Bufferline |
| `<space>ff` | `Lists files in your current working directory` | Telescope |
| `<space>fg` | `Search for a string in your current working directory` | Telescope |
| `<space>fb` | `Lists open buffers in current neovim instance` | Telescope |
| `<space>fh` | `Lists available help tags` | Telescope |
| `<space>nn` | `Open Tree (sidebar)` | Tree |
| `<space>tt` | `Open Terminal (press Esc and repeat the command to close the terminal)` | Terminal |
| `<space>ca` | `Code Action` | LSP Code Action |


## Licença

[MIT](https://choosealicense.com/licenses/mit/)


## Authors

- [@maxm03](https://github.com/maxmx03)

<a href="https://www.buymeacoffee.com/milianor" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>

