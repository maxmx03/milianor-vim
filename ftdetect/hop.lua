local success, hop = pcall(require, 'hop')

if not success then
  return
end

hop.setup {}
