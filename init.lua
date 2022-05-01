local success = pcall(require, 'load')

if success then
  user:setup({
    -- place your lsp servers bellow
    -- for more: https://github.com/williamboman/nvim-lsp-installer
    servers = {
      'tsserver',
      'cssls',
      'html',
      'jsonls',
      'sumneko_lua',
      'svelte',
      'pylsp',
      'vuels',
      'volar',
    },
    -- change your default theme,
    --
    -- tokyonight
    -- style: 'storm', 'night'
    --
    -- onedarker
    -- style: nil
    --
    -- darkplus
    -- style: nil
    --
    -- solarized
    -- style: nil
    theme = {
      colorscheme = 'onedarker',
      transparent = false,
      style = nil,
      sidebar = 'left',
      italic_comments = true,
      italic_keywords = true,
      italic_functions = false,
      italic_variables = false,
      lualine = 'evil_lualine', -- evil_lualine, bubbles, slanted, default
    },
    keymapping = function()
      local keymap = function(key, map, opt)
        vim.api.nvim_set_keymap(opt or 'n', key, map, { noremap = true, silent = true })
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

      -- INTEGRATED TERMINAL
      keymap('<space>tt', ':ToggleTerm direction=float<cr>')
      keymap('<esc>', [[<C-\><C-n>]], 't') -- exit the terminal

      -- LSP
      --[[ 
          vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>bf', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
          vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>bd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
          vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>bi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
          vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>K', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
          vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>bt', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
          vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>br', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
          vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
          vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
          vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
      --]]

      -- GIT
      keymap('<space>gs', ':Gitsigns stage_hunk<cr>') -- stage hunk
      keymap('<space>gr', ':Gitsigns reset_hunk<cr>') -- reset hunk
      keymap('<space>gp', ':Gitsigns preview_hunk<cr>') -- preview hunk
      keymap('<space>gd', ':Gitsigns diffthis<cr>') -- toggle local diff
      keymap('<space>gD', ':DiffviewOpen<cr>') -- open project diff
      keymap('<space>gc', ':DiffviewClose<cr>') -- close project diff
      keymap('<space>gb', ':Gitsigns toggle_current_line_blame<cr>') -- toggle blame
    end,
  })
end

vim.cmd([[
    augroup packer_user_config
      autocmd!
      autocmd BufWritePost plugins.lua source <afile> | PackerCompile
    augroup end
  ]])
