local opts = { noremap = true, silent = true }
local map = vim.keymap.set

map('n', '<C-x>', ':bd<cr>', opts)
map('n', '<C-Left>', "<cmd>lua require('mini.bracketed').buffer('backward')<cr>", opts)
map('n', '<C-Right>', "<cmd>lua require('mini.bracketed').buffer('forward')<cr>", opts)
map('v', '/', '<Plug>(comment_toggle_linewise_visual)', opts)
map('n', '+', '<C-a>', opts)
map('n', '-', '<C-x>', opts)
map('n', 'ss', ':split<cr>', opts)
map('n', 'sv', ':vsplit<cr>', opts)
map('n', '<F7>', ':Inspect<cr>', opts)
map('n', '<F8>', ':InspectTree<cr>', opts)

return {
  w = { '<cmd>update<cr>', 'Save' },
  q = { '<cmd>quit<cr>', 'Close' },
  Q = { '<cmd>quitall<cr>', 'Quit' },
  e = { '<cmd>NvimTreeToggle<cr>', 'Open File Tree' },
  f = { '<cmd>Telescope find_files<cr>', 'Find Files' },
  u = { '<cmd>Lazy sync<cr>', 'Lazy sync' },
  z = { '<cmd>ZenMode<cr>', 'Zen Mode' },
  ['/'] = { '<Plug>(comment_toggle_linewise_current)', 'Comment toggle current line' },
  [';'] = { "<cmd>lua require('mini.starter').open()<cr>", 'Open Starter' },
  s = {
    name = 'Search',
    f = { '<cmd>Telescope find_files<cr>', 'Search files' },
    w = { '<cmd>Telescope live_grep<cr>', 'Search words' },
    b = { '<cmd>Telescope buffers<cr>', 'Search buffers' },
    h = { '<cmd>Telescope help_tags<cr>', 'Search Help Tags' },
    H = { '<cmd>Telescope highlights<cr>', 'Search highlights' },
    c = { '<cmd>Telescope commands<cr>', 'Search commands' },
    k = { '<cmd>Telescope keymaps<cr>', 'Search keymaps' },
  },
  g = {
    name = 'Git',
    d = { '<cmd>Gitsigns diffthis<cr>', 'Open Diff' },
    p = { '<cmd>Gitsigns preview_hunk_inline<cr>', 'Open Inline Diff' },
    C = { '<cmd>Telescope git_commits<cr>', 'Commits' },
    b = { '<cmd>Telescope git_branches<cr>', 'Branchs' },
    s = { '<cmd>Telescope git_status<cr>', 'Status' },
    S = { '<cmd>Telescope git_stash<cr>', 'Stash' },
  },
  b = {
    name = 'Buffer',
    b = { "<cmd>lua require('mini.bracketed').buffer('forward')<cr>", 'Move to Next buffer' },
    p = { "<cmd>lua require('mini.bracketed').buffer('backward')<cr>", 'Move to Prev buffer' },
    f = { "<cmd>lua require('mini.bracketed').buffer('first')<cr>", 'Move to First buffer' },
    l = { "<cmd>lua require('mini.bracketed').buffer('last')<cr>", 'Move to Last buffer' },
    x = { '<cmd>bd<cr>', 'Exit buffer' },
  },
}
