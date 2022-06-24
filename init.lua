require 'user.init'

user.theme.colorscheme = 'solarized'
user.theme.lualine = 'default'
user.theme.sidebar = 'bottom'
user.theme.rainbow = true
user.langs = {
  'bash',
  'c',
  'c_sharp',
  'cpp',
  'css',
  'dart',
  'fish',
  'go',
  'graphql',
  'html',
  'java',
  'javascript',
  'json',
  'kotlin',
  'lua',
  'markdown',
  'php',
  'prisma',
  'python',
  'regex',
  'scss',
  'svelte',
  'tsx',
  'typescript',
  'vim',
  'vue',
  'yaml',
}

user.formatting = {
  'prettier',
  'stylua',
}

user.diagnostics = {
  'eslint',
}

user.servers = {
  'pylsp',
  'tsserver',
  'sumneko_lua',
  'prismals',
  'graphql',
  'cssls',
  'html',
  'vuels',
  'volar',
  'emmet_ls',
  'tailwindcss',
  'svelte',
}

user.plugins = {
  'ggandor/lightspeed.nvim',
}

vim.g.transparent_background = true
