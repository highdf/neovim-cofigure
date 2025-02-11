return {
	{
		'saghen/blink.cmp',
		dependencies = 'rafamadriz/friendly-snippets',

		version = '*',
		event = "InsertEnter",

		opts = {
			keymap = { preset = 'enter' },

			appearance = {
				use_nvim_cmp_as_default = true,
				nerd_font_variant = 'mono'
			},

			sources = {
				default = { 'lsp', 'path', 'snippets', 'buffer' },
				cmdline = {},
			},

			completion = {
				accept = {
					-- experimental auto-brackets support
					auto_brackets = {
						enabled = false
					},
				},
				menu = {
					min_width = 18,
					max_height = 12,
					border = 'none',
					winblend = 0,
					draw = {
						treesitter = { "lsp" },
					},
				},
				documentation = {
					auto_show = true,
					auto_show_delay_ms = 200,
				},
			},
		},
		opts_extend = { "sources.default" }
	}
}
