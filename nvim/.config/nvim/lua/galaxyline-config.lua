local section = require('galaxyline').section
local condition = require('galaxyline.condition')
local default = require('galaxyline.theme').default

local color = {
  bg = "#1d1d1d",
  fg = "#504945",
  fg0 = "#fbf1c7",
  red = "#fb4934",
  yellow = "#fabd2f",
  green = "#b8bb26",
  aqua = "#689d6a",
  blue = "#458588",
  cyan = "#83a598",
  purple = "#d3869b",
  grey = "#ebdbb2"
}

section.left[1] = {
  CurrentDir = {
    provider = function()
      return vim.fn.fnamemodify(vim.fn.getcwd(),':t')
    end,
    separator = ' | ',
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
    separator = '| ',
    separator_highlight = {color.fg,color.bg},
    highlight = {color.red,color.bg},
  }
}

section.left[7] = {
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
    separator = '| ',
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
    separator = ' |',
    separator_highlight = {color.fg,color.bg},
    highlight = {color.grey,color.bg,'bold'},
  }
}
section.right[8] = {
  LineInfo = {
    provider = 'LineColumn',
    separator = ' | ',
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
