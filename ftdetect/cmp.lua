local success, luasnip = pcall(require, 'luasnip')

if not success then
  return
end

local cmp = require 'cmp'

require('luasnip.loaders.from_vscode').lazy_load()

local icons = require 'core.icons'
local kind_icons = icons.kind

cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert {
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm { select = false },
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'emoji' },
    { name = 'cmp_tabnine' },
    { name = 'lab.quick_data', keyword_length = 4 },
  }, {
    { name = 'buffer' },
  }),
  formatting = {
    fields = { 'kind', 'abbr', 'menu' },
    format = function(entry, vim_item)
      -- Kind icons
      vim_item.kind = kind_icons[vim_item.kind]

      if entry.source.name == 'cmp_tabnine' then
        vim_item.kind = icons.misc.Robot
        vim_item.kind_hl_group = 'CmpItemKindTabnine'
      end

      if entry.source.name == 'emoji' then
        vim_item.kind = icons.misc.Smiley
        vim_item.kind_hl_group = 'CmpItemKindEmoji'
      end

      if entry.source.name == 'lab.quick_data' then
        vim_item.kind = icons.misc.CircuitBoard
        vim_item.kind_hl_group = 'CmpItemKindConstant'
      end

      -- NOTE: order matters
      vim_item.menu = ({
        nvim_lsp = '',
        nvim_lua = '',
        luasnip = '',
        buffer = '',
        path = '',
        emoji = '',
      })[entry.source.name]
      return vim_item
    end,
  },
  confirm_opts = {
    behavior = cmp.ConfirmBehavior.Replace,
    select = false,
  },
  window = {
    documentation = false,
    completion = {
      border = 'rounded',
      winhighlight = 'NormalFloat:Pmenu,NormalFloat:Pmenu,CursorLine:PmenuSel,Search:None',
    },
  },
  experimental = {
    ghost_text = true,
  },
}

cmp.setup.filetype('gitcommit', {
  sources = cmp.config.sources({
    { name = 'cmp_git' },
  }, {
    { name = 'buffer' },
  }),
})

cmp.setup.cmdline('/', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' },
  },
})

cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' },
  }, {
    { name = 'cmdline' },
  }),
})
