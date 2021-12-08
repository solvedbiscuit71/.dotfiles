require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  sync_install = false,
  highlight = {
    enable = {"c", "cpp", "html","python"},
    additional_vim_regex_highlighting = false,
  },
}
