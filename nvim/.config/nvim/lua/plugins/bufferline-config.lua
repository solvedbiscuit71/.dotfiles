function getcwd()
  return vim.fn.fnamemodify(vim.fn.getcwd(),':t')
end

require("bufferline").setup{
  options = {
    -- icons
    indicator_icon = ' ',
    buffer_close_icon = '',
    modified_icon = '',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',

    -- offset
    offsets = {{filetype = "NvimTree", text = getcwd , text_align = "center"}},

    -- show
    show_buffer_icons = true,
    show_buffer_close_icons = false,
    show_close_icon = false,
    show_tab_indicators = true,
    separator_style = "thin",
  }
}
