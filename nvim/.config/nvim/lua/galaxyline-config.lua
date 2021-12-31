local section = require('galaxyline').section
local condition = require('galaxyline.condition')
local default = require('galaxyline.theme').default

local color = {
  bg = "#1d2021",
  fg = "#504945",
  fg0 = "#fbf1c7",
  red = "#fb4934",
  yellow = "#fabd2f",
  green = "#b8bb26",
  aqua = "#8ec07c",
  cyan = "#83a598",
  purple = "#d3869b",
  grey = "#ebdbb2"
}

section.left[2] ={
  FileIcon = {
    provider = 'FileIcon',
    condition = condition.buffer_not_empty,
    highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,color.bg},
  },
}

section.left[3] = {
  FileName = {
    provider = {'FileName','FileSize'},
    condition = condition.buffer_not_empty,
    separator = ' | ',
    separator_highlight = {color.fg,color.bg},
    highlight = {color.grey,color.bg,'bold'}
  }
}

section.left[4] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = condition.check_git_workspace,
    separator = ' ',
    separator_highlight = {'NONE',color.bg},
    highlight = {color.aqua,color.bg,'bold'},
  }
}

section.left[5] = {
  GitIcon = {
    provider = function() return '' end,
    condition = condition.check_git_workspace,
    separator = ' ',
    separator_highlight = {'NONE',color.bg},
    highlight = {color.aqua,color.bg,'bold'},
  }
}

section.left[6] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = condition.hide_in_width,
    icon = '  ',
    highlight = {color.green,color.bg},
  }
}
section.left[7] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = condition.hide_in_width,
    icon = ' 柳',
    highlight = {color.yellow,color.bg},
  }
}
section.left[8] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = condition.hide_in_width,
    icon = '  ',
    highlight = {color.red,color.bg},
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

section.right[5]= {
  FileFormat = {
    provider = 'FileEncode',
    condition = condition.hide_in_width,
    separator = ' |',
    separator_highlight = {color.fg,color.bg},
    highlight = {color.grey,color.bg,'bold'},
  }
}
section.right[6] = {
  LineInfo = {
    provider = 'LineColumn',
    separator = ' | ',
    separator_highlight = {color.fg,color.bg},
    highlight = {color.grey,color.bg},
  },
}
section.right[7] = {
  PerCent = {
    provider = 'LinePercent',
    separator = ' ',
    separator_highlight = {'NONE',color.bg},
    highlight = {color.grey,color.bg},
  }
}

section.right[8] = {
  ScrollBar = {
    provider = 'ScrollBar',
    highlight = {color.fg0,color.bg},
  }
}
