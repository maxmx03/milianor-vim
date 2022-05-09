local M = {}

function M.set_italic(italic)
  if italic then
    return 'italic'
  end

  return 'NONE'
end

return M
