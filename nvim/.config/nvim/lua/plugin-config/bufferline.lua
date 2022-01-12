require('bufferline').setup {
  options = {
        -- Offset
        offsets = {
            {
                filetype = "NvimTree", 
                text = "LuaTree",
                highlight = "Directory",
                text_align = "center"
            },
        },

        -- Icons
        indicator_icon = '',
        
        -- Enable Icons
        show_buffer_icons = true,
        show_buffer_close_icons = false,
        show_close_icon = true,
        show_tab_indicators = true,

        -- Disable Diagnostics
        diagnostics = false,
    }
}
