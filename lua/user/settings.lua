vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.autoindent = true
vim.opt.ai = true
vim.opt.si = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.foldmethod = 'marker'
vim.opt.timeoutlen = 250 -- for which-key
vim.opt.updatetime = 250 -- for lsp
vim.opt.pumheight = 20
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' } -- for cmp
vim.g.dashboard_default_executive = 'telescope'
vim.o.termguicolors = true

vim.cmd([[
if has('python')
  set pyx=2
elseif has('python3') 
  set pyx=3
endif
]])
