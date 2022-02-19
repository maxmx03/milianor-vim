# My new neovim config (still in development)

## Vim to Lua

#### first step
- create a new filed called .config/nvim/init.lua

#### basic configuration
- global option (vim.o)
- local to window (vim.wo)
- local to buffer (vim.bo)
- works for general (vim.opt)

#### converting to lua

##### settings

```vim
" vim file
set expandtab
set shiftwidth=2
set softtabs=2
```

```lua
-- lua file
vim.bo.expandtab = true
vim.bo.shiftwidth = 2
vim.bo.softtabstop = 2
```

##### keybindings

```vim
" vim file
nmap <c-s> :W<CR>
imap <c-s> <ESC>:w<CR>a

nnoremap <c-j> <c-w>j
```

```lua
-- lua file
local keymap = vim.api.nvim_set_keymap
keymap('n', '<c-s>', ':w<CR>', {})
keymap('i'm '<c-s>',<ESC>:w<CR>a)

local opts = {noremap = true}
keymap('n', '<c-j>', '<c-w>j', opts)
```

##### package management

[vim-plug](https://github.com/junegunn/vim-plug)
```vim
" file.vim with vim-plug
call plug#begin()

Plug 'wbthomason/packer.nvim'

call plug#end()
```

[packer](https://github.com/wbthomason/packer.nvim)
```lua
-- file.lua with packer
require'packer'.startup(function ()
  use 'wbthomason/packer.nvim'
end)
```

#### reorganizing your lua files

1. Create a lua folder in ~/.config/nvim/lua
2. Put lua config stuff in that lua folder and just call

#### platform specific configuration

```lua
-- file.lua
if vim.loop.o_uname().sysname == "Linux" then
  require 'config'
end
```
