local M = {}

M.is_resolved = false
M.value = nil

function M:new(cb)
  local o = {}

  self.__index = self
  setmetatable(o, self)

  cb(self.resolve, self.reject)

  return o
end

function M:cb(status, value)
  self.is_resolved = status

  if value then
    self.value = value
  end

  return self
end

function M.resolve(self, value)
  return self:cb(true, value)
end

function M.reject(self, value)
  return self:cb(false, value)
end

function M:next(cb)
  if self.is_resolved then
    cb(self.value)
  end

  return self
end

function M:catch(cb)
  if not self.is_resolved then
    cb(self.value)
  end
end

return M
