local success, lsp_signature = pcall(require, 'lsp_signature')

if not success then
  return
end

lsp_signature.setup {
  hint_prefix = '🤔️ ',
  floating_window = false,
}
