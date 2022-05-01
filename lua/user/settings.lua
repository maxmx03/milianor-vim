vim.opt.fileencoding = 'utf-8'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.smartindent = true -- smart indentation, well smart is good right?
vim.opt.autoindent = true -- copy indent from current line when starting a new line.
vim.opt.smarttab = true -- inserts blanks on a <Tab> key (as per sw, ts and sts).
vim.opt.tabstop = 2 -- size of a hard tabstop (ts).
vim.opt.shiftwidth = 2 -- size of an indentation (sw).
vim.opt.softtabstop = 0 -- number of spaces a <Tab> counts for. When 0, featuer is off (sts).
vim.opt.expandtab = true -- always uses spaces instead of tab characters (et).
vim.opt.updatetime = 250 -- for lsp
vim.opt.pumheight = 20
vim.opt.foldmethod = 'marker'
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' } -- for cmp
vim.g.dashboard_default_executive = 'telescope'
vim.g.python3_host_prog = '/usr/bin/python3'
vim.o.termguicolors = true

vim.cmd([[
if has('python')
  set pyx=2
elseif has('python3') 
  set pyx=3
endif
]])
