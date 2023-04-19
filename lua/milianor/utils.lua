local function open_ui(options, title, actions)
  vim.ui.select(options, {
    prompt = title,
  }, function(choice)
    for key, option in ipairs(options) do
      if choice == option then
        vim.cmd(actions[key])
      end
    end
  end)
end

function _G.smart_quit()
  local bufnr = vim.api.nvim_get_current_buf()
  local modified = vim.api.nvim_buf_get_option(bufnr, 'modified')

  if modified then
    open_ui({ 'save', 'quit' }, 'You have unsaved changes', { 'update', 'quit!' })
  else
    vim.cmd.quit()
  end
end

_G.preview_markdown_dont_show_again = false

function _G.preview_markdown()
  if not _G.preview_markdown_dont_show_again then
    open_ui(
      { 'yes', 'no', "no, don't show again" },
      'Preview Markdown?',
      { 'MarkdownPreview', '', 'lua _G.preview_markdown_dont_show_again = true' }
    )
  end
end

function _G.navic_attach(client, bufnr)
  vim.g.navic_silence = false
  local symbols_supported = client.supports_method 'textDocument/documentSymbol'

  if not symbols_supported then
    return
  end

  local navic = require 'nvim-navic'

  navic.attach(client, bufnr)
end
