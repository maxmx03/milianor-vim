vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.autoindent = true
vim.opt.ai = true
vim.opt.si = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.cmd([[
set t_8f=^[[38;2;%lu;%lu;%lum
set t_8b=^[[48;2;%lu;%lu;%lum

let g:python3_host_prog = expand('/usr/bin/python3')

if has('python')
  set pyx=2
elseif has('python3') 
  set pyx=3
endif
]])
