local null_ls = require 'null-ls'

local function map(resources, builtins, callback)
  if resources then
    for _, resource in ipairs(resources) do
      callback(builtins[resource])
    end
  end
end

local function sources(formattings, diagnostics, completions, code_actions, hovers)
  local formatting = null_ls.builtins.formatting
  local diagnostic = null_ls.builtins.diagnostics
  local completion = null_ls.builtins.completion
  local code_action = null_ls.builtins.code_actions
  local hover = null_ls.builtins.hover
  local s = {}

  map(formattings, formatting, function(value)
    table.insert(s, value)
  end)

  map(diagnostics, diagnostic, function(value)
    table.insert(s, value)
  end)

  map(completions, completion, function(value)
    table.insert(s, value)
  end)

  map(code_actions, code_action, function(value)
    table.insert(s, value)
  end)

  map(hovers, hover, function(value)
    table.insert(s, value)
  end)

  return s
end

null_ls.setup {
  debug = false,
  sources = sources(user.formattings, user.diagnostics, user.completions, user.code_actions, user.hovers),
}

