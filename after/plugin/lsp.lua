local s1, nvim_lsp = pcall(require, "lspconfig")
local config = require "utils.lspconfig"
local s2, dartls = pcall(require, "flutter-tools")

if (not s1) and (not s2) then
  vim.notify("error after/plugin/in lsp.lua", "error")
  return
end

local on_attach = function(client, bufnr)
  config:on_attach(client, bufnr)
  config:additionals()
end

local sumneko_root_path = vim.fn.stdpath("cache") .. "/nlua/sumneko_lua/lua-language-server"
local sumneko_binary = sumneko_root_path .. "/bin" .. "/lua-language-server"

local runtime_path = vim.split(package.path, ";")
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

local servers = {
  "pylsp",
  "tsserver",
  "eslint",
  "intelephense",
  "cssls",
  "vuels",
  "jsonls",
  "solargraph",
  "vimls",
  "rust_analyzer"
}
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150
    },
    capabilities = capabilities
  }
end

nvim_lsp.sumneko_lua.setup {
  on_attach = on_attach,
  flags = {
    debounce_text_changes = 150
  },
  capabilities = capabilities,
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
  settings = {
    Lua = {
      runtime = {
        version = "Lua 5.4",
        path = runtime_path
      },
      diagnostics = {
        globals = {"vim"}
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true)
      },
      telemetry = {
        enable = false
      }
    }
  }
}

nvim_lsp.html.setup {
  on_attach = on_attach,
  filetypes = {"html", "htmldjango"},
  flags = {
    debounce_text_changes = 150
  },
  -- on_attach = my_custom_on_attach,
  capabilities = capabilities
}

nvim_lsp.vuels.setup {
  on_attach = on_attach,
  flags = {
    debounce_text_changes = 150
  },
  capabilities = capabilities,
  init_options = {
    config = {
      vetur = {
        ignoreProjectWarning = true,
        format = {
          enable = true,
          defaultFormatter = {
            css = "prettier",
            js = "prettier",
            ts = "prettier",
            sass = "prettier",
            scss = "prettier",
            less = "prettier"
          },
          options = {
            tabSize = 2
          }
        }
      }
    }
  }
}

dartls.setup {
  widget_guides = {
    enabled = true
  },
  lsp = {
    on_attach = on_attach,
    capabilities = capabilities,
    flags = {
      debounce_text_changes = 150
    }
  }
}
