user = {}
user.servers = {
  javascript = 'tsserver',
  typescript = 'tsserver',
  bash = 'bashls',
  c = 'ccls',
  cs = 'csharp_ls',
  cpp = 'ccls',
  deno = 'denols',
  docker = 'dockerls',
  go = 'gopls',
  graphql = 'graphql',
  html = 'html',
  json = 'jsonls',
  java = 'jdtls',
  lua = 'sumneko_lua',
  php = 'intelephense',
  python = 'pylsp',
  r = 'r_language_server',
  ruby = 'solargraph',
  svelte = 'svelte',
  swift = '	sourcekit',
  terraform = 'terraformls',
  sql = 'sqls',
  toml = 'taplo',
  vue = 'vuels',
  xml = 'lemminx',
  yaml = 'yamlls',
}

user.theme = { colorscheme = 'onedark', transparent = false, style = 'dark', sidebar = 'left' }

function user:setup(o)
  self.theme = o.theme or self.theme
end
