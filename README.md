
# Milianor Vim

My neovim configuration for web and mobile development

## Supported programming languages

- css
- golang
- html
- javacript
- java
- kotlin
- lua
- python
- php
- ruby
- rust
- scss
- typescript
- vue

## Formatters
- [prettier](https://prettier.io/)
- [black](https://github.com/psf/black)
- [stylua](https://github.com/JohnnyMorganz/StyLua)
- [rustfmt](https://github.com/rust-lang/rustfmt)


## Instalation

1. Install [Neovim](https://neovim.io/)
2. Install [Packer](https://github.com/wbthomason/packer.nvim)


### Installing dependencies

Updates installed (or auto installs if missing) LSP servers, that are already configured in your init.lua
```bash
nvim
:LspUpdate
```

You need to install lua language server and rust manually [sumneko_lua](https://github.com/sumneko/lua-language-server/wiki/Build-and-Run)
```bash
rustup component add rust-src
```

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

