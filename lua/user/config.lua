local config = {}

function config:new()
  local t = {}

  self.colorscheme = 'kanagawa'
  self.transparency = false
  self.sidebar = 'left'
  self.lualine = 'evil_lualine'
  self.lualine_colors = nil
  self.auto_save = false
  self.langs = {
    'lua',
    'vim',
  }
  self.servers = {
    'sumneko_lua',
    'vimls',
  }
  self.formattings = nil
  self.completions = nil
  self.code_actions = nil
  self.hovers = nil
  self.keymappings = nil
  self.plugins = nil

  if os.getenv 'TERM' == 'xterm-kitty' then
    self.use_nerd_icons = false
  else
    self.use_nerd_icons = true
  end

  self.__index = self
  setmetatable(t, self)

  return t
end

function config.smart_quit()
  local bufnr = vim.api.nvim_get_current_buf()
  local modified = vim.api.nvim_buf_get_option(bufnr, 'modified')

  if modified then
    vim.ui.input({ prompt = 'You have unsaved changes. Want to save? (y/n)' }, function(input)
      if input == 'y' then
        vim.cmd 'w!'
      end
    end)
  else
    vim.cmd 'q!'
  end
end

local user = config:new()

return user
