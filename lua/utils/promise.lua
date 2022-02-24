local M = {}

function M:new(cb)
  local o = {}

  self.__index = self
  setmetatable(o, self)

  self.is_rejected = false
  self.is_resolved = false
  self.is_finally = false
  self.errors = { msg = '' }
  self.result = nil

  local success = pcall(cb, self.resolve, self.reject)

  if not success then
    self.is_rejected = true
  else
    self.is_resolved = true
  end

  return o
end

function M.resolve(self, result)
  self.result = result
end

function M.reject(self, result)
  self.errors.msg = result

  error(self.errors)
end

function M:next(cb)
  if self.is_resolved and not self.is_rejected then
    local success, result = pcall(cb, self.result)

    if not success then
      self.is_resolved = false
      self.is_rejected = true
      self.errors.msg = result
    else
      self.is_resolved = true
      self.is_rejected = false
      self.is_finally = true
      self.result = result
    end
  end

  return self
end

function M:catch(cb)
  if self.is_rejected and not self.is_resolved then
    pcall(cb, self.errors.msg)

    self.is_rejected = false
    self.is_finally = false
  end

  return self
end

function M:finally(cb)
  if self.is_finally and not self.is_rejected then
    cb()
  end
end

return M
