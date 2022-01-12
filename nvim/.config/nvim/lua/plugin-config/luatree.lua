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

    -- git & diagnostics
    diagnostics = {
        enable = false,
    },
    git = {
        enable = false,
        ignore = false,
    },

    -- additional
    update_cwd = true,
    hijack_cursor = true,
}
