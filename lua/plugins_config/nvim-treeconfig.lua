vim.g.nvim_tree_indent_markers = 1 -- 0 by default, this option shows indent markers when folders are open
vim.g.nvim_tree_git_hl = 1  -- 0 by default, will enable file highlight for git attributes (can be used without the icons).
vim.g.nvim_tree_highlight_opened_files = 1  -- 0 by default, will enable folder and file icon highlight for opened files/directories.
vim.g.nvim_tree_root_folder_modifier = ':~' -- This is the default. See :help filename-modifiers for more options
vim.g.nvim_tree_add_trailing = 1 -- 0 by default, append a trailing slash to folder names
vim.g.nvim_tree_group_empty = 1 -- 0 by default, compact folders that only contain a single folder into one node in the file tree
vim.g.nvim_tree_disable_window_picker = 1 -- 0 by default, will disable the window picker.
vim.g.nvim_tree_icon_padding = ' ' -- one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
vim.g.nvim_tree_symlink_arrow = ' >> ' -- defaults to ' ➛ '. used as a separator between symlinks' source and target.
vim.g.nvim_tree_respect_buf_cwd = 1 -- 0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
vim.g.nvim_tree_create_in_closed_folder = 0 -- 1 by default, When creating files, sets the path of a file when cursor is on a closed folder to the parent folder when 0, and inside the folder when 1.
vim.g.nvim_tree_window_picker_exclude = {
       filetype =  {
         'notify',
         'packer',
         'qf'
	   },
       buftype = {
         'terminal'
	   }
     }
vim.g.nvim_tree_special_files = { ['README.md'] = 1, ['Makefile'] = 1, ['MAKEFILE'] = 1 }

vim.g.nvim_tree_show_icons = {
  git = 1,
  folders = 1,
  files = 1,
  folder_arrows = 1
}

vim.g.nvim_tree_icons = {
     default= '',
     symlink= '',
     git= {
       unstaged= "✗",
       staged= "✓",
       unmerged= "",
       renamed= "➜",
       untracked= "★",
       deleted= "",
       ignored= "◌"
       },
     folder= {
       arrow_open= "",
       arrow_closed = "",
       default= "",
       open= "",
       empty  = "",
       empty_open= "",
       symlink = "",
       symlink_open= "",
       }
     }

local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true}

keymap("n", "<C-n>", ":NvimTreeToggle<cr>", opts)
keymap("n", "<leader>r", ":NvimTreeRefresh<cr>", opts)
keymap("n", "<leader>n", ":NvimTreeFindFile<cr>", opts)
