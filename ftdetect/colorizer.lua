local success, colorizer = pcall(require, 'colorizer')

if not success then
  return
end

colorizer.setup {
  'css',
  'conf',
  'html',
  'javascript',
  'javascriptreact',
  'json',
  'lua',
  'toml',
  'typescript',
  'typescriptreact',
  'scss',
  'svelte',
  'vue',
  'yaml',
  'vim',
}
