local s1, cmp = pcall(require, "cmp")
local s2, luasnip = pcall(require, "luasnip")
local s3, lspkind = pcall(require, "lspkind")

if (not s1) and (not s2) and (not s3) then
  return
end

cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end
  },
  mapping = {
    ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), {"i", "c"}),
    ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(4), {"i", "c"}),
    ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), {"i", "c"}),
    ["<C-y>"] = cmp.config.disable,
    ["<C-e>"] = cmp.mapping(
      {
        i = cmp.mapping.abort(),
        c = cmp.mapping.close()
      }
    ),
    ["<CR>"] = cmp.mapping.confirm({select = true})
  },
  sources = cmp.config.sources(
    {
      {name = "nvim_lsp"},
      {name = "luasnip"} -- For luasnip users.
    },
    {
      {name = "buffer"}
    }
  ),
  formatting = {
    format = lspkind.cmp_format({width_text = true, maxwidth = 50})
  }
}

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(
  "/",
  {
    sources = {
      {name = "buffer"}
    }
  }
)

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(
  ":",
  {
    sources = cmp.config.sources(
      {
        {name = "path"}
      },
      {
        {name = "cmdline"}
      }
    )
  }
)

-- Setup lspconfig.
local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

return capabilities
