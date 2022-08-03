local opts = { noremap = true, silent = true }

-- SAVE
vim.keymap.set('n', '<F2>', ':update<cr>', opts) -- save file

-- EXIT NEOVIM
vim.keymap.set('n', '<F3>', ':quitall<cr>', opts) -- save file

-- INTEGRATED TERMINAL
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts) -- exit the terminal

-- HOP
vim.keymap.set('n', 's', ':HopPattern<cr>', opts)
vim.keymap.set('n', 'f', ':HopWord<cr>', opts)

-- COMMENT
vim.keymap.set('n', '<space>/', "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", opts)
vim.keymap.set(
  'x',
  '<space>/',
  '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>',
  opts
)

user.keymapping = {
  w = { ':update<cr>', 'Save' },

  q = { ':quit<cr>', 'Quit' },

  a = { ':Dashboard<cr>', 'Open Dashboard' },

  n = { ':NvimTreeToggle<cr> ', 'Open Neo-tree' },

  f = {
    name = 'TELESCOPE',
    f = { ':Telescope find_files<cr>', 'Find file' },
    g = { ':Telescope live_grep<cr>', 'Find character' },
    b = { ':Telescope buffers<cr>', 'Find buffers' },
    h = { ':Telescope help_tag<cr>', 'Help tags' },
  },

  [']'] = { ':BufferLineCycleNext<cr>', 'Next tab' },
  ['['] = { ':BufferLineCyclePrev<cr>', 'Previous tab' },
  x = { ':BufferLinePickClose<cr>', 'Close tab' },
  ['l'] = { ':BufferLineCloseLeft<cr>', 'Close all left tabs' },
  ['r'] = { ':BufferLineCloseRight<cr>', 'Close all right tabs' },

  s = {
    name = 'LSP SAGA',
    r = { ':Lspsaga rename<cr>', 'Rename character' },
    c = { ':Lspsaga code_action<cr>', 'Code Action' },
    C = { ':Lspsaga range_code_action<cr>', 'Range Code Action' },
    k = { ':Lspsaga hover_doc<cr>', 'Hover Doc' },
    h = { ':Lspsaga signature_help<cr>', 'Signature Help' },
    l = { ':Lspsaga show_line_diagnostics<cr>', 'Show line diagnostic' },
    d = { ':Lspsaga preview_definition<cr>', 'Preview Definition' },
    f = { ':Lspsaga lsp_finder<cr>', 'Finder' },
    [']'] = { ':Lspsaga diagnostic_jump_next<cr>', 'Next diagnostic' },
    ['['] = { ':Lspsaga diagnostic_jump_prev<cr>', 'Prev diagnostic' },
  },

  i = {
    name = 'INTEGRATED TERMINAL',
    i = { ':ToggleTerm direction<cr>', 'Open Terminal' },
  },

  g = {
    name = 'GIT',
    s = { ':Gitsigns stage_hunk<cr>', 'Stage hunk' },
    r = { ':Gitsigns reset_h  unk<cr>', 'Reset hunk' },
    p = { ':Gitsigns preview_hunk<cr>', 'Preview hunk' },
    d = { ':Gitsigns diffthis<cr>', 'Toggle local diff' },
    D = { ':DiffviewOpen<cr>', 'Open project diff' },
    c = { ':DiffviewClose<cr>', 'Close project diff' },
    b = { ':Gitsigns toggle_current_line_blame<cr>', 'Toggle blame' },
  },

  c = {
    name = 'VCOLOR',
    r = { ':VCoolor<cr>', 'HASH color' },
    g = { ':VCoolIns r<cr>', 'RGB color' },
    h = { ':VCoolIns h<cr>', 'HSL color' },
    b = { ':VCoolIns ra<cr>', 'RGBA color' },
  },

  e = {
    name = 'TROUBLE',
    e = { ':TroubleToggle<cr>', 'Toggle Trouble' },
    w = { ':TroubleToggle workspace_diagnostics<cr>', 'Workspace diagnostics' },
    d = { ':TroubleToggle document_diagnostics<cr>', 'Document diagnostics' },
    q = { ':TroubleToggle quickfix<cr>', 'Quick fix' },
    l = { ':TroubleToggle loclist<cr>', 'Loclist' },
    R = { ':TroubleToggle lsp_references<cr>', 'Lsp references' },
  },

  t = {
    name = 'TODO',
    t = { ':TodoLocList<cr>', 'Location list to show all todos' },
    q = { ':TodoQuickFix<cr>', 'Quickfix list to show all todos' },
    e = { ':TodoTrouble<cr>', 'List all todos in trouble' },
    f = { ':TodoTelescope<cr>', 'List all todos with Telescope' },
  },

  m = {
    name = 'MARKDOWN PREVIEW',
    m = { ':MarkdownPreviewToggle<cr>', 'Toggle markdown preview' },
    p = { ':MarkdownPreview<cr>', 'Open markdown preview' },
    s = { ':MarkdownPreviewStop<cr>', 'Stop markdown preview' },
  },

  p = {
    name = 'PACKER',
    p = { ':PackerSync<cr>', 'Perform `PackerUpdate` and then `PackerCompile`' },
    s = { ':PackerStatus<cr>', 'See plugins status' },
    u = { ':PackerUpdate<cr>', 'Clean, then update and install plugins' },
    i = { ':PackerInstall<cr>', 'Clean, then install missing plugins' },
    c = { ':PackerClean<cr>', 'Remove any disabled or unused plugins' },
    C = { ':PackerCompile<cr>', 'Regenerate compiled loader file' },
  },

  L = {
    name = 'LSP',
    l = { ':LspInstallInfo<cr>', 'Show installed lsp servers' },
    r = { ':LspRestart<r>', 'Restart Lsp' },
    i = { ':LspInfo<cr>', 'Show Info' },
    u = { ':LspUninstall', 'Uninstall lsp server' },
    U = { ':LspUninstallAll<cr>', 'Uninstall all lsp servers' },
  },
}
