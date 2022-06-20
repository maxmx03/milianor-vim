local lspconfig = require 'lspconfig'

local on_attach = function(_, bufnr)
  local signs = { Error = '', Warn = '', Hint = '', Info = '', Prefix = '' }

  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  vim.diagnostic.config {
    virtual_text = {
      prefix = signs.Prefix,
    },
  }

  for type, icon in pairs(signs) do
    local hl = 'DiagnosticSign' .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
  end

  vim.cmd [[
    augroup LspFormatting
      autocmd! * <buffer>
	  autocmd BufWritePre <buffer> lua vim.lsp.buf.format()
	augroup END
  ]]
end

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, 'lua/?.lua')
table.insert(runtime_path, 'lua/?/init.lua')

local servers = user.servers
for _, lsp in pairs(servers) do
  local config = {
    on_attach = on_attach,
    capabilities = capabilities,
    flags = {
      -- This will be the default in neovim 0.7+
      debounce_text_changes = 150,
    },
  }

  if lsp == 'sumneko_lua' and user.luadev then
    local luadev = require 'lua-dev'

    config = luadev.setup {
      library = {
        vimruntime = true, -- runtime path
        types = true, -- full signature, docs and completion of vim.api, vim.treesitter, vim.lsp and others
        plugins = true, -- installed opt or start plugins in packpath
        -- you can also specify the list of plugins to make available as a workspace library
        -- plugins = { "nvim-treesitter", "plenary.nvim", "telescope.nvim" },
      },
      runtime_path = false, -- enable this to get completion in require strings. Slow!
      -- pass any additional options that will be merged in the final lsp config
      lspconfig = {
        on_attach = on_attach,
        capabilities = capabilities,
        flags = {
          -- This will be the default in neovim 0.7+
          debounce_text_changes = 150,
        },
      },
    }
  end

  lspconfig[lsp].setup(config)
end

local success, dartls = pcall(require, 'flutter-tools')

if success then
  dartls.setup {
    widget_guides = {
      enabled = true,
    },
    lsp = {
      on_attach = on_attach,
      capabilities = capabilities,
      flags = {
        debounce_text_changes = 150,
      },
    },
  }
end
