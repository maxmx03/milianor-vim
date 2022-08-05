local success, todo = pcall(require, 'todo-comments')

if not success then
  return
end

todo.setup {}
