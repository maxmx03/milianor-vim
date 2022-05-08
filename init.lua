local success = pcall(function()
  require('plugins')
  require('user.settings')
  require('user.config')
  vim.notify = require('notify')
end)

if not success then
  return
end

-- uncomment the server of your choice
-- server list: https://github.com/williamboman/nvim-lsp-installer
user.servers = {
  -- 'awk_ls',
  -- 'angularls',
  -- 'ansiblels',
  -- 'arduino_language_server',
  -- 'asm_lsp',
  -- 'astro',
  -- 'spectral',
  -- 'bashls',
  -- 'beancount',
  -- 'bicep',
  -- 'ccls',
  -- 'clangd',
  -- 'csharp_ls',
  -- 'omnisharp',
  -- 'ccls',
  -- 'clangd',
  -- 'cmake',
  -- 'cssls',
  -- 'cssmodules_ls',
  -- 'clarity_lsp',
  -- 'clojure_lsp',
  -- 'codeqlls',
  -- 'crystalline',
  -- 'scry',
  -- 'cucumber_language_server',
  -- 'dartls',
  -- 'denols',
  -- 'dhall_lsp_server',
  -- 'diagnosticls',
  -- 'serve_d',
  -- 'dockerls',
  -- 'dotls',
  -- 'efm',
  -- 'eslint',
  -- 'elixirls',
  -- 'elmls',
  -- 'ember',
  -- 'emmet_ls',
  -- 'erlangls',
  -- 'fsautocomplete',
  -- 'flux_lsp',
  -- 'foam_ls',
  -- 'fortls',
  -- 'golangci_lint_ls',
  -- 'gopls',
  -- 'grammarly',
  -- 'graphql',
  -- 'groovyls',
  -- 'html',
  -- 'hls',
  -- 'haxe_language_server',
  -- 'hoon_ls',
  -- 'jsonls',
  -- 'jdtls',
  -- 'quick_lint_js',
  -- 'tsserver',
  -- 'jsonnet_ls',
  -- 'julials',
  -- 'kotlin_language_server',
  -- 'ltex',
  -- 'texlab',
  -- 'lelwel_ls',
  'sumneko_lua',
  -- 'prosemd_lsp',
  -- 'remark_ls',
  -- 'zeta_note',
  -- 'zk',
  -- 'mm0_ls',
  -- 'nickel_ls',
  -- 'nimls',
  -- 'ocamlls',
  -- 'ocamllsp',
  -- 'ccls',
  -- 'bsl_ls',
  -- 'spectral',
  -- 'opencl_ls',
  -- 'intelephense',
  -- 'phpactor',
  -- 'psalm',
  -- 'perlnavigator',
  -- 'powershell_es',
  -- 'prismals',
  -- 'puppet',
  -- 'purescriptls',
  -- 'jedi_language_server',
  -- 'pyright',
  -- 'sourcery',
  -- 'pylsp',
  -- 'r_language_server',
  -- 'rescriptls',
  -- 'reason_ls',
  -- 'robotframework_ls',
  -- 'rome',
  -- 'solargraph',
  -- 'rust_analyzer',
  -- 'sqlls',
  -- 'sqls',
  -- 'salt_ls',
  -- 'theme_check',
  -- 'slint_lsp',
  -- 'solang',
  -- 'solc',
  -- 'solidity_ls',
  -- 'sorbet',
  -- 'esbonio',
  -- 'stylelint_lsp',
  -- 'svelte',
  -- 'sourcekit',
  -- 'svls',
  -- 'verible',
  -- 'taplo',
  -- 'tailwindcss',
  -- 'terraformls',
  -- 'tflint',
  -- 'tsserver',
  -- 'vala_ls',
  -- 'vimls',
  -- 'volar',
  -- 'vuels',
  -- 'lemminx',
  -- 'yamlls',
  -- 'zls',
}

user.theme.colorscheme = 'tokyonight' -- tokyonight, onedarker, darkplus, solarized
user.theme.transparent = false
user.theme.lualine = 'evil_lualine' -- default, evil_lualine, bubbles, slanted
user.theme.style = 'night' -- tokyonight: night, storm
user.theme.sidebar = 'left'
user.theme.italic_comments = true
user.theme.italic_keywords = true
user.theme.italic_functions = false
user.theme.italic_variables = false

local keymap = function(lhs, rhs, mode, opts)
  vim.api.nvim_set_keymap(mode or 'n', lhs, rhs, opts or { noremap = true, silent = true })
end

-- DEFAULT
keymap('<F2>', ':update<cr>') -- save file
keymap('<F3>', ':quit!<cr>') -- exit neovim

-- NVIM-TREE
keymap('<space>n', ':NvimTreeToggle<cr>') -- open file explorer

-- TELESCOPE
keymap('<space>ff', ':Telescope find_files<cr>') -- find files
keymap('<space>fg', ':Telescope live_grep<cr>') -- find character
keymap('<space>fb', ':Telescope buffers<cr>') -- find buffers
keymap('<space>fh', ':Telescope help_tag<cr>') -- help tags

-- BUFFERLINE
keymap('<space>]', ':BufferLineCycleNext<cr>') -- move to the next tab
keymap('<space>[', ':BufferLineCyclePrev<cr>') -- move to previous tab
keymap('<space>x', ':BufferLinePickClose<cr>') -- close the selected tab
keymap('<space>l', ':BufferLineCloseLeft<cr>') -- close all left tabs
keymap('<space>r', ':BufferLineCloseRight<cr>') -- close all right tabs

-- LSP SAGA
keymap('<space>sr', ':Lspsaga rename<cr>') -- rename character
keymap('<space>sc', ':Lspsaga code_action<cr>') -- code action
keymap('ca', ':Lspsaga code_action<cr>') -- code action
keymap('<space>C', ':Lspsaga range_code_action<cr>') -- range code action
keymap('<space>sh', ':Lspsaga signature_help<cr>') -- signature help
keymap('K', ':Lspsaga hover_doc<cr>') -- hover doc
keymap('<space>sl', ':Lspsaga show_line_diagnostics<cr>') -- show line diagnostic
keymap('<space>s[', ':Lspsaga diagnostic_jump_next<cr>') -- jump next diagnostic
keymap('<space>s]', ':Lspsaga diagnostic_jump_prev<cr>') -- jump prev diagnostic

-- INTEGRATED TERMINAL
keymap('<space>tt', ':ToggleTerm direction=float<cr>')
keymap('<esc>', [[<C-\><C-n>]], 't', { noremap = true, silent = true }) -- exit the terminal

-- GIT
keymap('<space>gs', ':Gitsigns stage_hunk<cr>') -- stage hunk
keymap('<space>gr', ':Gitsigns reset_h  unk<cr>') -- reset hunk
keymap('<space>gp', ':Gitsigns preview_hunk<cr>') -- preview hunk
keymap('<space>gd', ':Gitsigns diffthis<cr>') -- toggle local diff
keymap('<space>gD', ':DiffviewOpen<cr>') -- open project diff
keymap('<space>gc', ':DiffviewClose<cr>') -- close project diff
keymap('<space>gb', ':Gitsigns toggle_current_line_blame<cr>') -- toggle blame

-- VCOLOR
keymap('<space>cr', ':VCoolor<cr>') -- hash color insertion
keymap('<space>cg', ':VCoolIns r<cr>') -- rgb color insertion
keymap('<space>ch', ':VCoolIns h<cr>') -- hsl color insertion
keymap('<space>cb', ':VCoolIns ra<cr>') -- rgba color insertion

-- FLUTTER
keymap('<space>mr', ':FlutterRun<cr>') -- flutter run
keymap('<space>mR', ':FlutterHotRestart<cr>') -- flutter restart
keymap('<space>mq', ':FlutterQuit<cr>') -- flutter quit
keymap('<space>mv', ':FlutterVisualDebug<cr>') -- flutter visual debug
keymap('<space>mo', ':FlutterOutlineToggle<cr') -- flutter ooutline debug

-- COMMENT
keymap(
  '<space>cc',
  "v:count == 0 ? '<Plug>(comment_toggle_current_linewise)' : '<Plug>(comment_toggle_linewise_count)'",
  nil,
  { expr = true, noremap = true }
)
keymap('<space>cc', '<Plug>(comment_toggle_linewise_visual)', 'x')

require('user.theme')
