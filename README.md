
# Milianor Vim

My neovim configuration for web and mobile development

<img src="https://lh3.googleusercontent.com/weJn9Q4kKg7Ml0tN_JLNBol1s_VcKQ3A4oCQXsuiOoWcevrKzr0tfehSorK-SCB2MKXqMWuFWV-QhrwR0v1POUO2l3WQcPUt8xm60yVTGG9mKrxHW92QuAbsWKKopTMVT1ttekeXfhIaN7kRTAWWMdMG42yLa2FcdUrljgRTP_gIU7qv_MxMwyapZAAt49YBUZifV3Gu7eTGEE3zbw-VkkE_r9A3fx0kSuHEzmPVMRSFk0b5_UZ5uq9tyq9GVsEStbZXOTfjUX88eN0QtwkY63oL-wh3BOSyB-bpvePlcKYY2mOyTEvZ0nVBbhWr7gwjk01uAQy24Fan96OdFb1Yo7TQ_qGzA7vcm4MOV3hpWGCQLbM77DDupc86ALQOzn27uwrCOIio_zkk6OC_kArtDuaX0QoPTZFnRhMcs7eyRuUq9Zs6tylB3xAcSjIJkVQnVPldCpbR0ySz-EPYSZPesjLmTmgtgPTZ-ft0lOhz-JM2MZxnGjkZ3nNEmBxmxISAaPD1rbC8lv50Hn6eh2OWxpNqR-dB651VIgqJG1Tig1Nhpz8DmAU-gMLyyi0OHcVnjLKkp_3CgxfjV6zXNd16n8hX_dtdMHYQhfKAOnOZjaK3LWAgVsmsMUl7bR3PGxReI01j7oybD_Hj3IR1yPhzKJUClLyqCZvTjyAaCZRlUFAxIUDsQvTIbiYx8Y0eCDB4KxTvCIN7vkzkHtyoSXjsLrN5=w1675-h942-no?authuser=0" />

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

clone repo
```bash
git clone https://github.com/maxmx03/milianor-vim.git ~/.config/nvim
```

### Linux

1. Install [Neovim](https://neovim.io/)


2. install gcc

```bash
sudo apt install gcc
```

3. Install [node](https://nodejs.org/en/)

## Windows

1. install [dotnet](https://dotnet.microsoft.com/en-us/download)


2. install [scoop](https://scoop.sh/)

```powershell
iwr -useb get.scoop.sh | iex
```

3. install neovim/mingw/nvm

```powershell
scoop bucket add versions
scoop install neovim-nightly mingw nvm
```

```powershell
nvm install --lts
```

## Windows and Linux

then install
```bash
npm i -g neovim yarn
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

## Installing the default formatters


install rust and cargo
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

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

