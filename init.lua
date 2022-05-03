local success = pcall(require, 'main')

if success then
  user:setup({
    -- place your lsp servers bellow
    -- for more: https://github.com/williamboman/nvim-lsp-installer
    servers = {
      'cssls',
      'emmet_ls',
      'html',
      'jsonls',
      'pylsp',
      'sumneko_lua',
      'svelte',
      'tsserver',
      'tailwindcss',
      'vuels',
      'volar',
    },
    -- change your default theme,
    --
    -- colorscheme: tokyonight
    -- style: 'storm', 'night'
    --
    -- colorscheme: onedarker
    -- style: nil
    --
    -- colorscheme: darkplus
    -- style: nil
    --
    -- colorscheme: solarized
    -- style: nil
    theme = {
      colorscheme = 'onedarker',
      transparent = true,
      style = nil,
      sidebar = 'left',
      italic_comments = true,
      italic_keywords = true,
      italic_functions = false,
      italic_variables = false,
      lualine = 'bubbles', -- evil_lualine, bubbles, slanted, default
    },
    keymapping = function()
      local keymap = function(lhs, rhs, mode, opts)
        vim.api.nvim_set_keymap(mode or 'n', lhs, rhs, opts or { noremap = true, silent = true })
      end

      -- DEFAULT
      keymap('<F2>', ':update<cr>') -- save file
      keymap('<F3>', ':quit<cr>') -- exit neovim

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
      keymap('<space>sh', ':Lspsaga hover_doc<cr>') -- hover doc
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
    end,
  })
end

vim.cmd([[
    augroup packer_user_config
      autocmd!
      autocmd BufWritePost plugins.lua source <afile> | PackerCompile
    augroup end
  ]])
