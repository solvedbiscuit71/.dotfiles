local telescope = require 'telescope'

telescope.setup{
    defaults = {
        no_ignore = true,
        file_ignore_patterns = {
            "node_modules",
        },
        mappings = {
            i = {
                ["<esc>"] = require('telescope.actions').close,
                -- There is defaults for send to qflist
            }
        }
    }
}
