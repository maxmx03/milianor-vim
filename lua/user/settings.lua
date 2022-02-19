vim.bo.number = true
vim.bo.relativenumber = true
vim.bo.mouse = "a"
vim.bo.autoindent = true
vim.bo.ai = true
vim.bo.si = true
vim.bo.tabstop = 4
vim.bo.softtabstop = 2
vim.bo.shiftwidth = 2
vim.bo.pyx = "python3"

vim.cmd([[
set t_8f=^[[38;2;%lu;%lu;%lum
set t_8b=^[[48;2;%lu;%lu;%lum
]])
