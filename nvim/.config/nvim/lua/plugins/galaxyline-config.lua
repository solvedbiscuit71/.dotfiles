local section = require('galaxyline').section
local condition = require('galaxyline.condition')
local default = require('galaxyline.theme').default

local color = {
  bg = "#1d1d1d",
  fg = "#504945",
  fg0 = "#d5c4a1",
  red = "#fb4934",
  orange = "#fe8019",
  yellow = "#fabd2f",
  green = "#b8bb26",
  aqua = "#689d6a",
  blue = "#458588",
  cyan = "#83a598",
  purple = "#d3869b",
  grey = "#ebdbb2"
}

section.left[1] = {
  RainbowRed = {
    provider = function() return '▊' end,
    highlight = {color.bg,color.bg}
  },
}

section.left[2] = {
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

section.left[3] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = condition.check_git_workspace,
    separator = ' ',
    separator_highlight = {'NONE',color.bg},
    highlight = {color.aqua,color.bg,'bold'},
  }
}

section.left[4] = {
  GitIcon = {
    provider = function() return '' end,
    condition = condition.check_git_workspace,
    separator = ' ',
    separator_highlight = {'NONE',color.bg},
    highlight = {color.aqua,color.bg,'bold'},
  }
}

section.left[5] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = condition.hide_in_width,
    icon = '  ',
    highlight = {color.green,color.bg},
  }
}

section.left[6] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = condition.hide_in_width,
    icon = ' 柳',
    highlight = {color.yellow,color.bg},
  }
}

section.left[7] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = condition.hide_in_width,
    icon = '  ',
    highlight = {color.red,color.bg},
  }
}

section.left[8] = {
  Sep = {
    provider = function()
      return ''
    end,
    condition = condition.check_git_workspace,
    separator = '  ',
    separator_highlight = {color.fg,color.bg},
    highlight = {color.bg,color.bg}
  }
}


section.left[9] = {
  filePath = {
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
    separator = ' ',
    separator_highlight = {'NONE',color.bg},
    highlight = {color.red,color.bg}
  }
}
section.right[2] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = '  ',
    highlight = {color.yellow,color.bg},
  }
}

section.right[3] = {
  DiagnosticHint = {
    provider = 'DiagnosticHint',
    icon = '  ',
    highlight = {color.cyan,color.bg},
  }
}

section.right[4] = {
  DiagnosticInfo = {
    provider = 'DiagnosticInfo',
    icon = '  ',
    highlight = {color.purple,color.bg},
  }
}

section.right[5] ={
  FileIcon = {
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
    separator = ' ',
    separator_highlight = {color.fg,color.bg},
    highlight = {color.grey,color.bg},
  },
}
section.right[9] = {
  PerCent = {
    provider = 'LinePercent',
    separator = ' ',
    separator_highlight = {'NONE',color.bg},
    highlight = {color.grey,color.bg},
  }
}

section.right[10] = {
  ScrollBar = {
    provider = 'ScrollBar',
    highlight = {color.fg0,color.bg},
  }
}