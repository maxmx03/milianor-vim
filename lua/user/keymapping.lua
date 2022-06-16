local keymap = function(lhs, rhs, mode, opts)
  vim.api.nvim_set_keymap(mode or 'n', lhs, rhs, opts or { noremap = true, silent = true })
end

-- DEFAULT
keymap('<F2>', ':update<cr>') -- save file
keymap('<F3>', ':quit!<cr>') -- exit neovim

-- LSP SAGA
keymap('ca', ':Lspsaga code_action<cr>') -- code action
keymap('K', ':Lspsaga hover_doc<cr>') -- hover doc

-- INTEGRATED TERMINAL
keymap('<esc>', [[<C-\><C-n>]], 't', { noremap = true, silent = true }) -- exit the terminal

-- COMMENT
keymap(
  '<space>cc',
  "v:count == 0 ? '<Plug>(comment_toggle_current_linewise)' : '<Plug>(comment_toggle_linewise_count)'",
  nil,
  { expr = true, noremap = true }
)
keymap('<space>cc', '<Plug>(comment_toggle_linewise_visual)', 'x')

User.keymapping = {
  w = { ':update<cr>', 'Save' },

  q = { ':quit<cr>', 'Quit' },

  a = { ':Alpha<cr>', 'Open startify' },

  n = { ':Neotree filesystem toggle<cr> ', 'Open Neo-tree' },

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
  l = { ':BufferLineCloseLeft<cr>', 'Close all left tabs' },
  r = { ':BufferLineCloseRight<cr>', 'Close all right tabs' },

  s = {
    name = 'LSP SAGA',
    r = { ':Lspsaga rename<cr>', 'Rename character' },
    c = { ':Lspsaga code_action<cr>', 'Code Action' },
    C = { ':Lspsaga range_code_action<cr>', 'Range Code Action' },
    k = { ':Lspsaga hover_doc<cr>', 'Hover Doc' },
    h = { ':Lspsaga signature_help<cr>', 'Signature Help' },
    l = { ':Lspsaga show_line_diagnostics<cr>', 'Show line diagnostic' },
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

  F = {
    name = 'FLUTTER',
    r = { ':FlutterRun<cr>', 'Flutter run' },
    R = { ':FlutterHotRestart<cr>', 'Flutter restart' },
    q = { ':FlutterQuit<cr>', 'Flutter quit' },
    v = { ':FlutterVisualDebug<cr>', 'Flutter visual debug' },
    o = { ':FlutterOutlineToggle<cr>', 'Flutter outline debug' },
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
