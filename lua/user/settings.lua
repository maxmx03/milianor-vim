vim.opt.fileencoding = 'utf-8'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.mouse = 'a'
vim.opt.smartindent = true -- smart indentation, well smart is good right?
vim.opt.autoindent = true -- copy indent from current line when starting a new line.
vim.opt.smarttab = true -- inserts blanks on a <Tab> key (as per sw, ts and sts).
vim.opt.tabstop = 2 -- size of a hard tabstop (ts).
vim.opt.shiftwidth = 2 -- size of an indentation (sw).
vim.opt.softtabstop = 0 -- number of spaces a <Tab> counts for. When 0, featuer is off (sts).
vim.opt.expandtab = true -- always uses spaces ins;ead of tab characters (et).
vim.opt.updatetime = 300 -- for lsp
vim.opt.timeoutlen = 100 -- for which-key
vim.opt.pumheight = 20
vim.opt.foldmethod = 'marker'
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' } -- for cmp
vim.opt.undofile = true -- persist undo
vim.opt.undodir = vim.fn.stdpath 'cache' .. '/undo'
vim.opt.clipboard = 'unnamedplus'
vim.opt.whichwrap:append("<,>,[,],h,l")
vim.g.dashboard_default_executive = 'telescope'
vim.o.termguicolors = true

if string.find(vim.loop.os_uname().sysname, 'Windows') then
  vim.g.python3_host_prog = '$HOME/scoop/apps/python/current/python.exe'
else
  vim.g.python3_host_prog = '/usr/bin/python3.10'
end

if vim.fn.has 'wsl' == 1 then
  vim.g.clipboard = {
    copy = {
      ['+'] = 'win32yank.exe -i --crlf',
      ['*'] = 'win32yank.exe -i --crlf',
    },
    paste = {
      ['+'] = 'win32yank.exe -o --lf',
      ['*'] = 'win32yank.exe -o --lf',
    },
  }
end

vim.cmd [[
if has('python')
  set pyx=2
elseif has('python3') 
  set pyx=3
endif
]]
