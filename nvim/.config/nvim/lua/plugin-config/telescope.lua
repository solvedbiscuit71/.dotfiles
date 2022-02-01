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
      }
    },
    extensions = {
      fzf = {
        fuzzy = true,
        override_generic_sorter = true,
        override_file_sorter = true,
      }
    },
  }
}

telescope.load_extension('fzf')
telescope.load_extension('git_worktree')
