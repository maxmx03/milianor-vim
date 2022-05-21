-- CREDITS: https://github.com/ChristianChiarulli
local gps = require('nvim-gps')

gps.setup()

local function isempty(s)
  return s == nil or s == ''
end

local function filename()
  local filename = vim.fn.expand('%:t')
  local extension = ''
  local file_icon = ''
  local file_icon_color = ''
  local default_file_icon = ''
  local default_file_icon_color = ''

  if not isempty(filename) then
    extension = vim.fn.expand('%:e')

    local default = false

    if isempty(extension) then
      extension = ''
      default = true
    end

    file_icon, file_icon_color = require('nvim-web-devicons').get_icon_color(filename, extension, { default = default })

    local hl_group = 'FileIconColor' .. extension

    vim.api.nvim_set_hl(0, hl_group, { fg = file_icon_color })
    if file_icon == nil then
      file_icon = default_file_icon
      file_icon_color = default_file_icon_color
    end

    return ' ' .. '%#' .. hl_group .. '#' .. file_icon .. '%*' .. ' ' .. '%#LineNr#' .. filename .. '%*'
  end
end

local function get_gps()
  local status_ok, gps_location = pcall(gps.get_location, {})
  if not status_ok then
    return
  end

  local icons = require('utils').icons()

  if not gps.is_available() then -- Returns boolean value indicating whether a output can be provided
    return
  end

  local retval = filename()

  if gps_location == 'error' then
    return ''
  else
    if not isempty(gps_location) then
      return retval .. ' ' .. icons.ui.ChevronRight .. ' ' .. gps_location
    else
      return retval
    end
  end
end

vim.api.nvim_create_autocmd({ 'CursorMoved', 'BufWinEnter', 'BufFilePost' }, {
  callback = function()
    local winbar_filetype_exclude = {
      'help',
      'startify',
      'dashboard',
      'packer',
      'neogitstatus',
      'NvimTree',
      'Trouble',
      'alpha',
      'lir',
      'Outline',
      'spectre_panel',
      'toggleterm',
    }

    if vim.tbl_contains(winbar_filetype_exclude, vim.bo.filetype) then
      vim.opt.winbar = nil
      return
    end

    local value = get_gps()

    if value == nil then
      value = filename()
    end

    vim.opt.winbar = value
  end,
})
