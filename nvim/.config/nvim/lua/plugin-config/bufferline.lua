require('bufferline').setup {
  options = {
    offsets = {
      {
        filetype = "NvimTree", 
        highlight = "Directory",
        text = "LuaTree",
        text_align = "center"
      }
    },

    diagnostics = false,
    indicator_icon = '',
    show_buffer_close_icons = false,
    show_buffer_icons = true,
    show_close_icon = true,
    show_tab_indicators = true
  }
}
