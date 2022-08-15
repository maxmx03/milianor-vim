local success, mason_lspconfig = pcall(require, 'mason-lspconfig')

if not success then
  return
end

mason_lspconfig.setup {
  automatic_installation = true,
}
