require'nvim-tree'.setup {
    -- looks
    view = {
        side = 'left',
        width = 30,
        height = 30,
        hide_root_folder = true,
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
