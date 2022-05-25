local M = {}

function M.colorscheme_validate(colorscheme)
  local colorschemes = {
    'tokyonight',
    'solarized',
    'kanagawa',
  }

  return vim.tbl_contains(colorschemes, colorscheme)
end

function M.sidebar_validate(direction)
  local sidebar = {
    'left',
    'right',
    'bottom',
    'top',
  }

  return vim.tbl_contains(sidebar, direction)
end

function M.lualine_validate(lualine)
  local lualines = {
    'default',
    'evil_lualine',
    'bubbles',
    'slanted',
  }

  return vim.tbl_contains(lualines, lualine)
end

function M.server_validate() end

return M
