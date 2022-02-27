local success, colorizer = pcall(require, 'colorizer')

if success then
  colorizer.setup({
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
  })
else
  vim.notify('colorizer is not working', 'error')
end
