vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.autoindent = true
vim.opt.ai = true
vim.opt.si = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.timeoutlen = 250 -- for which-key
vim.opt.completeopt = {"menu", "menuone", "noselect"} -- for cmp
vim.g.dashboard_default_executive = "telescope"

vim.cmd [[
set t_8f=^[[38;2;%lu;%lu;%lum
set t_8b=^[[48;2;%lu;%lu;%lum

if has('python')
  set pyx=2
elseif has('python3') 
  set pyx=3
endif
]]
