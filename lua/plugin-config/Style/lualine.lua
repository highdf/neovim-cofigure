------------------------------------
-- lualine配置
------------------------------------
require('lualine').setup {
	tabline = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { require'tabline'.tabline_buffers },
		lualine_x = { require'tabline'.tabline_tabs },
		lualine_y = {},
		lualine_z = {},
	}
}

-- 自定义分隔符样式
local separators = {
  space = '',
  slant = '',
  arrow = '>',
  round = ')',
  block = '|',
}
