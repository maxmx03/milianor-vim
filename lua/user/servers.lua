local M = { servers = { 'vimls' } }

function M:setup(o)
  local servers = {}
  local insert = table.insert

  for language, enabled in pairs(o) do
    if (language == 'javascript' or language == 'typescript') and enabled then
      insert(servers, 'tsserver')
      insert(servers, 'eslint')
      insert(servers, 'jsonls')
    elseif language == 'html' and enabled then
      insert(servers, language)
    elseif (language == 'css') and enabled then
      insert(servers, 'cssls')
    elseif language == 'ruby' and enabled then
      insert(servers, 'solargraph')
    elseif language == 'rust' and enabled then
      insert(servers, 'rust_analyzer')
    elseif language == 'python' and enabled then
      insert(servers, 'pylsp')
    elseif language == 'php' and enabled then
      insert(servers, 'intelephense')
    elseif language == 'java' and enabled then
      insert(servers, 'java_language_server')
    elseif language == 'kotlin' and enabled then
      insert(servers, 'kotlin_language_server')
    elseif language == 'docker' and enabled then
      insert(servers, 'dockerls')
    elseif language == 'vue' and enabled then
      insert(servers, 'vuels')
    elseif language == 'graphql' and enabled then
      insert(servers, 'graphql')
      insert(servers, 'prismals')
    end
  end

  self.servers = servers
end

return M
