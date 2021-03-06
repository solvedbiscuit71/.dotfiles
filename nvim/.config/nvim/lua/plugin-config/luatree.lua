local tree_cb = require'nvim-tree.config'.nvim_tree_callback

require'nvim-tree'.setup {
  -- looks
  view = {
    side = 'left',
    width = 30,
    height = 30,
    hide_root_folder = false,
    mappings = {
      custom_only = false,
      list = {
        { key = ".", cb = tree_cb("cd") },
        { key = "l", cb = tree_cb("edit") },
        { key = "h", cb = tree_cb("close_node") }
      }
    },
  },
  renderer = {
    indent_markers = {
      enable = false,
      icons = {
        corner = "└ ",
        edge = "│ ",
        none = "  ",
      },
    },
    icons = {
      webdev_colors = true,
    },
  },

  -- git & diagnostics
  diagnostics = {
    enable = false,
  },
  git = {
    enable = false,
    ignore = false,
  },

  -- actions
  actions = {
    open_file = {
      quit_on_open = true,
    }
  },

  -- additional
  update_cwd = true,
  hijack_cursor = true,
}
