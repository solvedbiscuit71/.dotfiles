local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Function
local function button(sc, txt, keybind, keybind_opts)
  local btn = dashboard.button(sc, txt, keybind, keybind_opts)
  btn.opts.hl = "Identifier"
  btn.opts.hl_shortcut = "Identifier"
  return btn
end

local function footer()
  return os.date("%d-%m-%Y  %H:%M:%S")
end

-- Set header
dashboard.section.header.val = {
  "                                                     ",
  "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
  "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
  "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
  "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
  "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
  "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
  "                                                     ",
}

-- Set menu
dashboard.section.buttons.val = {
  button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
  button( "SPC f f", "  > Find file"),
  button( "SPC f n", "  > Settings"),
  button( "q", "  > Quit NVIM", ":q!<CR>"),
}

-- Set footer
dashboard.section.footer.val = footer()
dashboard.section.footer.opts.hl = "Constant"

-- Send config to alpha
alpha.setup(dashboard.opts)
