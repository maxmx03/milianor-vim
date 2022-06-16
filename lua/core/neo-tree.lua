local neotree = require('neo-tree')

neotree.setup({
  window = {
    position = User.theme.sidebar,
  },
  filesystem = {
    filtered_items = {
      visible = false,
      hide_dotfiles = false,
      hide_gitignored = true,
      hide_hidden = true,
      hide_by_name = {
        'node_modules',
      },
    },
  },
})
