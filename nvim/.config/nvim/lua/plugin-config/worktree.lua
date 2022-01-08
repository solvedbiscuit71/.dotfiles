local Worktree = require("git-worktree")

Worktree.on_tree_change(function(op,metadata)
    -- callback
    vim.api.nvim_command('bufdo bdelete')
    vim.api.nvim_command('Ex')
end)
