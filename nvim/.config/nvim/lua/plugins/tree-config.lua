local tree_cb = require'nvim-tree.config'.nvim_tree_callback

require'nvim-tree'.setup {
  hijack_cursor = true,
  auto_close          = false,
  update_cwd          = true,
  update_to_buf_dir   = {
    enable = false,
    auto_open = false,
  },
  filters = {
    dotfiles = false,
    custom = {
      'node_modules',
      '.git'
    }
  },
  git = {
    enable = false,
    ignore = false,
    timeout = 100,
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    mappings = {
      custom_only = false,
      list = {
        { key = {"."},cb = tree_cb("cd") },
      }
    },
  }
}
