local M = {}

M.value = nil

function M:new(cb)
  local o = {}

  self.__index = self
  setmetatable(o, self)

  self.resolved = false
  self.rejected = false
  self.value = nil

  cb(self.resolve, self.reject)

  return o
end

function M.resolve(self, value)
  self.resolved = value
end

function M.reject(self, value)
  self.rejected = value
end

function M:next(cb)
  if not self.rejected then
    local success, resolved = pcall(cb, self.resolved)

    if success then
      self.resolved = resolved
    end
  end

  return self
end

function M:catch(cb)
  if self.rejected then
    self.rejected = cb(self.rejected)
  end

  return self
end

return M
