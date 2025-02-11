return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		event = "VeryLazy",
		config = function() 
			require'lualine'.setup {
				tabline = {
					lualine_a = {},
					lualine_b = {},
					lualine_c = { require'tabline'.tabline_buffers },
					lualine_x = { require'tabline'.tabline_tabs },
					lualine_y = {},
					lualine_z = {},
				},
			}
		end,
	}
}
