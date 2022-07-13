local null_ls = require 'null-ls'

local function map(builtins, sources, callback)
  if sources then
    for _, source in ipairs(sources) do
      callback(builtins[source])
    end
  end
end

local function sources(opts)
  local s = {}

  map(null_ls.builtins.formatting, opts.formattings, function(source)
    table.insert(s, source)
  end)

  map(null_ls.builtins.diagnostics, opts.diagnostics, function(source)
    table.insert(s, source)
  end)

  map(null_ls.builtins.completion, opts.completions, function(source)
    table.insert(s, source)
  end)

  map(null_ls.builtins.code_actions, opts.code_actions, function(source)
    table.insert(s, source)
  end)

  map(null_ls.builtins.hover, opts.hovers, function(source)
    table.insert(s, source)
  end)

  return s
end

null_ls.setup {
  debug = false,
  sources = sources {
    formattings = user.formattings,
    diagnostics = user.diagnostics,
    completions = user.completions,
    code_actions = user.code_actions,
    hovers = user.hovers,
  },
}
