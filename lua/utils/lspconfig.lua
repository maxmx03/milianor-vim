local status, lspsignature = pcall(require, "lsp_signature")

if (not status) then
  vim.notify("error in utils/lspconfig.lua", "error")
  return
end

local M = {}

M.opts = {noremap = true, silent = true}
vim.api.nvim_set_keymap("n", "<space>e", "<cmd>lua vim.diagnostic.open_float()<CR>", M.opts)
vim.api.nvim_set_keymap("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", M.opts)
vim.api.nvim_set_keymap("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", M.opts)
vim.api.nvim_set_keymap("n", "<space>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", M.opts)

function M:formatters()
  local client = self.client

  if client.name == "eslint" then
    vim.api.nvim_command [[nnoremap <C-f> :EslintFixAll<CR> :update<CR>]]
  end

  local formatters = {
    "intelephense",
    "vuels",
    "solargraph",
    "dartls",
    "pylsp",
    "rust_analyzer"
  }

  client.resolved_capabilities.document_formatting = false

  for _, formatter in ipairs(formatters) do
    if client.name == formatter then
      client.resolved_capabilities.document_formatting = true
    end
  end

  if client.name == "eslint" then
    local keymap = vim.api.nvim_set_keymap
    local opts = {noremap = true}

    keymap("n", "<F2>", ":EslintFixAll<cr> :update<cr>", opts)
  end

  if client.resolved_capabilities.document_formatting then
    vim.cmd [[
	  augroup Format
	  autocmd! * <buffer>
	  autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()
	  augroup END

	  autocmd BufWritePost *.blade.php FormatWrite
	]]
  else
    vim.cmd [[
	  augroup Format
	  autocmd! * <buffer>
	  autocmd BufWritePost <buffer> FormatWrite
	  augroup END
	]]
  end
end

function M.icons()
  local signs = {Error = "", Warn = "", Hint = "", Info = "", Prefix = ""}

  vim.diagnostic.config(
    {
      virtual_text = {
        prefix = signs.Prefix
      }
    }
  )

  for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = hl})
  end
end

function M:signature()
  local bufnr = self.bufnr

  lspsignature.on_attach(
    {
      bind = true,
      handler_opts = {
        border = "rounded"
      }
    },
    bufnr
  )
end

function M:additionals()
  self:formatters()
  self.icons()
  self:signature()
end

function M:on_attach(client, bufnr)
  self.client = client
  self.bufnr = bufnr
  local opts = self.opts

  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
  vim.api.nvim_buf_set_keymap(
    bufnr,
    "n",
    "<space>wl",
    "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>",
    opts
  )
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
end

return M
