vim.opt.fileencoding = 'utf-8'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.mouse = 'a'
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.smarttab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 0
vim.opt.expandtab = true
vim.opt.updatetime = 300 -- lsp
vim.opt.timeoutlen = 100 -- which-key
vim.opt.pumheight = 20
vim.opt.foldmethod = 'marker'
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' } -- cmp
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath 'cache' .. '/undo'
vim.opt.clipboard = 'unnamedplus'
vim.opt.whichwrap:append '<,>,[,],h,l'
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.o.sessionoptions = 'blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal'
vim.o.termguicolors = true

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
