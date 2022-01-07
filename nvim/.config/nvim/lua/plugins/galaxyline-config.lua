local section = require('galaxyline').section
local condition = require('galaxyline.condition')

local color = {
  bg = "#0f1112",
  fg = "#504945",
  red = "#fb4934",
  orange = "#fe8019",
  yellow = "#fabd2f",
  lightyellow = "#ffffe0",
  green = "#b8bb26",
  aqua = "#689d6a",
  blue = "#458588",
  cyan = "#83a598",
  purple = "#d3869b",
  grey = "#ebdbb2"
}

local custom_icon = require('galaxyline.provider_fileinfo').define_file_icon()
custom_icon['NvimTree'] = { color.green , 'פּ' }
custom_icon['netrw'] = { color.green , 'פּ' }
custom_icon['fugitive'] = { color.orange , '' }
custom_icon['floggraph'] = { color.orange , '' }

section.left[1] = {
  ViMode = {
    provider = function()
      local mode_color = {n = color.purple, i = color.green,v=color.yellow,
                          [''] = color.yellow,V=color.yellow,
                          c = color.red,no = color.red,s = color.orange,
                          S=color.orange,[''] = color.orange,
                          t=color.cyan,
                        }
      vim.api.nvim_command('hi GalaxyViMode guifg='..mode_color[vim.fn.mode()])
      return vim.fn.fnamemodify(vim.fn.getcwd(),':t')
    end,
    separator = '  ',
    separator_highlight = {color.fg,color.bg},
    highlight = {color.blue,color.bg,'bold'}
  }
}

section.left[2] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = condition.check_git_workspace,
    separator = ' ',
    separator_highlight = {'NONE',color.bg},
    highlight = {color.aqua,color.bg,'bold'},
  }
}

section.left[3] = {
  GitIcon = {
    provider = function() return '' end,
    condition = condition.check_git_workspace,
    separator = ' ',
    separator_highlight = {'NONE',color.bg},
    highlight = {color.aqua,color.bg,'bold'},
  }
}

section.left[4] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = condition.hide_in_width,
    icon = '  ',
    highlight = {color.green,color.bg},
  }
}

section.left[5] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = condition.hide_in_width,
    icon = ' 柳',
    highlight = {color.yellow,color.bg},
  }
}

section.left[6] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = condition.hide_in_width,
    icon = '  ',
    highlight = {color.red,color.bg},
  }
}

section.left[7] = {
  Seperator = {
    provider = function()
      return ''
    end,
    condition = condition.check_git_workspace,
    separator = ' ',
    separator_highlight = {color.fg,color.bg},
    highlight = {color.bg,color.bg}
  }
}


section.left[8] = {
  FilePath = {
    provider = function()
      return vim.fn.fnamemodify(vim.fn.expand('%'),':~:.')
    end,
    highlight = {color.grey,color.bg,'italic'}
  }
}



section.right[1] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = '  ',
    condition = condition.hide_in_width,
    separator = ' ',
    separator_highlight = {'NONE',color.bg},
    highlight = {color.red,color.bg}
  }
}
section.right[2] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = '  ',
    condition = condition.hide_in_width,
    highlight = {color.yellow,color.bg},
  }
}

section.right[3] = {
  DiagnosticHint = {
    provider = 'DiagnosticHint',
    icon = '  ',
    condition = condition.hide_in_width,
    highlight = {color.cyan,color.bg},
  }
}

section.right[4] = {
  DiagnosticInfo = {
    provider = 'DiagnosticInfo',
    icon = '  ',
    condition = condition.hide_in_width,
    highlight = {color.purple,color.bg},
  }
}

section.right[5] ={
  BufferIcon = {
    provider = 'FileIcon',
    condition = condition.buffer_not_empty,
    separator = ' ',
    separator_highlight = {color.fg,color.bg},
    highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,color.bg},
  },
}

section.right[6] = {
  BufferType = {
    provider = 'FileTypeName',
    condition = condition.buffer_not_empty,
    highlight = {color.grey,color.bg}
  }
}

section.right[7]= {
  FileFormat = {
    provider = 'FileEncode',
    condition = condition.hide_in_width,
    separator = ' ',
    separator_highlight = {color.fg,color.bg},
    highlight = {color.grey,color.bg,'bold'},
  }
}
section.right[8] = {
  LineInfo = {
    provider = 'LineColumn',
    separator = '  ',
    separator_highlight = {color.fg,color.bg},
    highlight = {color.grey,color.bg},
  },
}

section.right[9] = {
  ScrollBar = {
    provider = 'ScrollBar',
    highlight = {color.lightyellow,color.bg},
  }
}
